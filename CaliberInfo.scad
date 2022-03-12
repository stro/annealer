// $Id: CaliberInfo.scad 54 2022-03-12 03:18:15Z stro $
/*
 * Copyright (c) 2022 sttek.com <https://sttek.com>
 *
 * This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike
 * 4.0 International License.
 *
 * https://creativecommons.org/licenses/by-nc-sa/4.0/
 * 
 * You are free to:
 *   Share — copy and redistribute the material in any medium or format
 *   Adapt — remix, transform, and build upon the material
 * Under the following terms:
 *   Attribution — You must give appropriate credit, provide a link to the
 *     license, and indicate if changes were made. You may do so in any
 *     reasonable manner, but not in any way that suggests the licensor
 *     endorses you or your use.
 *   NonCommercial — You may not use the material for commercial purposes. 
 *   ShareAlike — If you remix, transform, or build upon the material, you
       must distribute your contributions under the same license as the original.
 *   No additional restrictions — You may not apply legal terms or
 *     technological measures that legally restrict others from doing anything
 *     the license permits.
 */

function caliber_data ( cal ) = 
  // First number: case diameter at the widest (mm), rounded up
  // Second number: case length (mm), rounded down
  // Third number: distance to the neck (mm)
     
  cal == ".223 Remington"         ? [11.0, 44.0,  8.4 ] :
  cal == ".243 Winchester"        ? [13.0, 51.0, 12.7 ] :
  cal == ".270 Winchester"        ? [13.0, 62.0, 14.7 ] :
  cal == ".30 Herrett"            ? [14.0, 40.0,  3.4 ] :
  cal == ".300 AAC Blackout"      ? [11.0, 34.0,  6.4 ] :
  cal == ".30-30 Winchester"      ? [14.0, 51.0, 14.5 ] :
  cal == ".308 Winchester"        ? [13.0, 51.0, 11.2 ] :
  cal == ".30-06 Springfield"     ? [13.0, 62.0, 13.2 ] :
  cal == ".303 British"           ? [15.0, 55.0, 10.0 ] :
  cal == "7-30 Waters"            ? [14.0, 52.0, 11.4 ] :
  cal == "7.62×54mmR"             ? [15.0, 52.0, 13.7 ] :
  cal == "8×57mm"                 ? [13.0, 55.0, 10.8 ] :
  cal == ".338 Lapua Magnum"      ? [15.0, 69.0, 14.3 ] :
    
  cal == ""                       ? [0, 0, 0] :

  assert(false, str("No caliber defined: ", cal)); 
