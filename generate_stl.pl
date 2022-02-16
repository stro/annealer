#!/usr/bin/perl -w

# $Id: generate_stl.pl 23 2022-02-16 02:37:21Z stro $

use strict;
use warnings;
use 5.010;
use utf8;

use English '-no_match_vars';
use File::Spec;
use File::Temp;
use Getopt::Long qw/:config auto_help/;

use open qw/:std :utf8/;
binmode(STDOUT, ":utf8");

my ($force, $verbose);
GetOptions(
    'force' => \$force,
    'verbose' => \$verbose,
);

=head1 SYNOPSIS

  Usage: generate_stl.pl [--force]

    --force parameter overwrites existing files

=cut

my $main_filename = 'AnnealerCase.scad';
my $cal_filename = 'CaliberInfo.scad';

my (%modules, @calibers, @modules_simple, @modules_cal);

my $openscad = $OSNAME eq 'MSWin32' ? 'C:\Program Files\OpenSCAD\openscad.com' :
               $OSNAME eq 'darwin'  ? '/Applications/OpenSCAD.app/Contents/MacOS/OpenSCAD' :
               'openscad'; 

# Get information about parts to print
if (open my $F_IN, '<', $main_filename) {

  while (my $line = <$F_IN>) {
    if ($line =~ m!^module\s+(print_\w+).*?//\s+name:\s+(.*?\.stl)!x) {
      my ($module, $stl) = ($1, $2);
      say sprintf('Module %s generates %s', $module, $stl) if $verbose;
      $modules{$module} = $stl;
    }
  }

  close $F_IN;

  # Get information about calibers
  if (open my $F_CAL, '<', $cal_filename) {
    while (my $line = <$F_CAL>) {
      if ($line =~ m!cal\s+==\s+\"(.+?)\"!x) {
        my $cal = $1;
        #utf8::encode($cal);
        push @calibers, $cal;
      }
    }
    close $F_CAL;

    # Create temporary scad file with all printable modules
    my ($F_OUT, $temp_filename) = File::Temp::tempfile('tempXXXX', SUFFIX => '.scad', UNLINK => 0);
    say $F_OUT sprintf('use <./%s>;', $main_filename);
    say $F_OUT 'print = "nothing";';
    say $F_OUT 'caliber = "missing"; // can be missing';
    
    foreach my $module (sort keys %modules) {
      if ($module =~ m!for_caliber!x) {
        say $F_OUT sprintf('if (print == "%s") { %s(caliber); }', $module, $module);
        push @modules_cal, $module;
      } else {
        say $F_OUT sprintf('if (print == "%s") { %s(); }', $module, $module);
        push @modules_simple, $module;
      }
    }
    close $F_OUT;

    say sprintf('Generated file %s', $temp_filename) if $verbose;

    foreach my $module (@modules_simple) {
      my $stl = $modules{$module};

      my $filename = File::Spec->catfile('renders' => $stl);
      if (-e $filename and not $force) {
        say sprintf('File %s for %s exists, skipping', $filename, $module) if $verbose;
        next;
      }

      say sprintf('Generate %s from %s', $stl, $module);  

      my @cmd = ($openscad, '-o', $filename, '-D', sprintf('"print=\"%s\""', $module), $temp_filename);
      my $time = time;
      system(@cmd);
      say sprintf('  Generated in %d seconds', time - $time);
    }

    foreach my $module (@modules_cal) {
      foreach my $caliber (@calibers) {
        my $cal = $caliber;
        $cal =~ s!\s!_!msgx;
        $cal =~ s!\.!!msgx;
        $cal =~ s!\N{U+00D7}!x!msgx;
        my $stl = sprintf($modules{$module}, $cal);

        my $filename = File::Spec->catfile('renders' => 'caliber-specific' => $stl);
        if (-e $filename and not $force) {
          say sprintf('File %s for %s; caliber %s exists, skipping', $filename, $module, $caliber) if $verbose;
          next;
        }

        say sprintf('Generate %s from %s; caliber %s', $stl, $module, $caliber);
        
        my @cmd = ($openscad, '-o', $filename, '-D', sprintf('"print=\"%s\""', $module), '-D', sprintf('"caliber=\"%s\""', $caliber), $temp_filename);
        my $time = time;
        system(@cmd);
        say sprintf('  Generated in %d seconds', time - $time);
      }
    }

    unlink $temp_filename;
  } else {
    die sprintf('Cannot read file %s: %s', $cal_filename, $OS_ERROR);
  }
} else {
  die sprintf('Cannot read file %s: %s', $main_filename, $OS_ERROR);
}
