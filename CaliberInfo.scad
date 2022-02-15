// $Id: CaliberInfo.scad 16 2022-02-14 05:31:06Z stro $

/*
 * Copyright (c) 2022 sttek.com <https://sttek.com>
 *
 * This work is licensed under a Creative Commons Attribution-NonCommercial
 * 4.0 International License.
 *
 * https://creativecommons.org/licenses/by-nc/4.0/
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
 *   No additional restrictions — You may not apply legal terms or
 *     technological measures that legally restrict others from doing anything
 *     the license permits.
 */

function caliber_data ( cal ) = 
  // First number: case diameter at the widest (mm)
  // Second number: case length (mm)
     
  cal == ".223 Remington"         ? [10.0, 44 ] :
  cal == ".300 AAC Blackout"      ? [10.0, 34 ] :
  cal == ".30-30 Winchester"      ? [14.0, 51 ] :
  cal == ".308 Winchester"        ? [13.0, 50 ] :
  cal == ".30-06 Springfield"     ? [13.0, 62 ] :
  cal == ".303 British"           ? [15.0, 55 ] :
  cal == "7.62×54mmR"             ? [15.0, 52 ] :
  cal == "8×57mm"                 ? [13.0, 55 ] :
  cal == ".338 Lapua Magnum"      ? [15.0, 69 ] :
    
  cal == ""                       ? [0, 0] :

  assert(false, str("No caliber defined: ", cal)); 
