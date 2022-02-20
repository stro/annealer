// $Id: AnnealerCase.scad 36 2022-02-20 21:15:33Z stro $
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

use <./CaliberInfo.scad>;
use <contrib/Anton-Regular.ttf>

front_insert_mount_enabled = false;
top_insert_mount_enabled = true;
top_funnel_mounts_enabled = true;
top_funnel_mounts_number = 7;

case_x = 250;
case_y = 200;
case_z = 250;
case_thickness = 5;

case_edge_radius = 2;

bolt_margin = 2.0;

ab_width = 10;
ab_depth = 10;
ab_height = 10;

m2_diameter = 2.4;
m2_head_diameter = 4.0;
m2_head_height = 2.2;
m2_nut_diameter = 5.2;
m2_nut_height = 2.0;
m2_length = 20.0;

m3_diameter = 3.4;
m3_head_diameter = 6.2;
m3_head_height = 3.8;
m3_nut_diameter = 6.6;
m3_nut_height = 2.6;
m3_length = 20.0;

m4_diameter = 4.4;
m4_head_diameter = 7.6;
m4_head_height = 3.8;
m4_nut_diameter = 8.6;
m4_nut_height = 3.2;
m4_length = 20.0;

power_width = 50.4;  // 48V power supply
power_depth = 114.4;
power_height = 215.0;
power_holder_thickness = 3;
power_holder_z = 2;
power_mount_z1 = 32.6;
power_mount_z2 = power_mount_z1 + 151.0;
power_mount_x1 = 13.8;
power_mount_x2 = 38.4;

power12_width = 40.0;
power12_height = 99.0;
power12_depth = 82.0;
power12_offset_z = 38.0;

power_vent_y = 76.0; // 47 + 58/2
power_vent_z = 48.3;
power_vent_diameter = 58.0;
power_vent_inside_diameter = 30.0;
power_vent_mount_width = 5.0;

power_sq_vents_y1 = 16.0;
power_sq_vents_y2 = 72.4;
power_sq_vents_z = 153.0;
power_sq_vents_width = 25.0;
power_sq_vents_height = 31.0;

power_outlet_width = 27.4;
power_outlet_height = 47.4;
power_outlet_hole_z = 22.4;
power_outlet_hole_x = 40.0;
power_outlet_offset_x = 180.0;
power_outlet_offset_z = 110.0;

power12_out_offset_x = 60.0;
power12_out_offset_z = 25.0;
power12_out_diameter = 10.8;

board_x1 = 59.6;
board_x2 = 59.6;
board_y = 89.0;
board_margin = 3.0;
board_height = 22.0;

board_x_offset = 20;
board_y_offset = 30; // from the back wall
board_z = m3_head_height + bolt_margin;
board_z_width = m3_head_diameter + 2 * bolt_margin;

board_usb_x = 41.2;
board_usb_z = 0.8; // above the board
board_usb_size = 15.0;

relay_width = 50.0;
relay_height = 73.2;
relay_depth = 80.7;
relay_z = 70.0;
relay_x_offset = power_width + power12_width + 10.0;
relay_z_offset = power12_offset_z; // use the same
relay_mount_diff = 69.0;

fan_width = 80.2;
fan_depth = 25.0;
fan_height = 80.2;
fan_x_offset = (case_x - fan_width)/ 2 - case_thickness;
fan_mount_offset = 71.6;
fan_diameter = 75.0;
fan_center_diameter = 33.0;
fan_mount_width = power_vent_mount_width; // 5.0

fan_x_center = fan_x_offset + fan_diameter / 2;
fan_z_center = case_z - fan_height + fan_diameter / 2 - ab_height;

radiator_width = 81.0;
radiator_height = 105.0;
radiator_depth = 54.0;
radiator_y = 71.0;
radiator_z = 71.2;
radiator_y_offset = (case_y - radiator_width) / 2 - case_thickness;
radiator_z_offset = power12_offset_z; // use the same;
radiator_mount_y_diff = 70.0;
radiator_mount_z_diff = 71.4;

radiator_diameter = fan_diameter;
radiator_center_diameter = fan_center_diameter;
radiator_mount_width = power_vent_mount_width; // 5.0
radiator_y_center = radiator_y_offset + radiator_diameter / 2;
radiator_z_center = radiator_z_offset + radiator_diameter / 2;

pump_width = 56.4;
pump_depth = 65.0;
pump_height = 82.0;
pump_x_offset = 2.0;
pump_y1 = 10.2;
pump_y2 = pump_y1 + 45.2;
pump_x1 = 10.8;
pump_x2 = pump_x1 + 34.0;
pump_holder_height = 5.0;
pump_holder_slope = 5.0;
pump_holder_slope_x = pump_width;
pump_holder_slope_z = 2.0;

pump_hole_diameter = 23.0;
pump_hole_x = 31.0;
pump_hole_y = 43.0;

insert_mount_x_offset = 0;
insert_mount_y_offset = 50;
insert_mount_y_offset_top = 60;
insert_mount_z_offset = 30;
insert_mount_z_rib = 5;

zvs_width = 102.0;
zvs_depth = 105.0;
zvs_height = 53.0;
zvs_z = 5.0;
zvs_z_width = 7.0;
zvs_z_hole = 3.4;
zvs_x_offset = (case_x - zvs_width) / 2 - case_thickness - 2;

zvs_y_diff = 90.0;
zvs_z_diff = 74.4;

zvs_mount_thickness = 5.0;
zvs_mount_x_offset = 135.0;
zvs_mount_y_offset = 0.0;
zvs_mount_z_offset = 50.0;
zvs_mount_extra_ab_offset = 30.0; // Needs to be below the case holder
zvs_mount_extra_z_hole = 30.0; // Hole above the top mounts; saves a little bit of filament
zvs_front_mount_z_offset = 100.0;

zvs_holder_diameter = ab_width;

zvs_sensor_width = 10.0;
zvs_sensor_height = 2.0;
zvs_sensor_space = 2.0;
zvs_sensor_diff = 13.4 + zvs_sensor_width;
zvs_sensor_offset = -20.0; // to the front

top_funnel_mount_x_offset = 20;
top_funnel_mount_y_offset = 0;
top_funnel_mount_y_diff = 20;

top_mount_x_diff_front = 85.0;
top_mount_y_diff_front = 20.0;
top_mount_y_offset = 30.0;

led_width = 27.2;
led_height = 20.4;
led_x_diff = 23.4;
led_z_diff = 23.4;
led_margin = 5.0;
led_height_visible = 15.8;
led_x_margin = 2.0;

front_center_depth = 75.0;

button_diameter = 19.0;
button_row_offset = 40.0; // from the right
button_vertical_space = 35.0;
button_z_offset = 20.0; // from the bottom
button_label_offset = 7.5 + button_diameter / 2;
button_label_width = 40.0;
button_label_depth = 2.0;
button_label_height = 10.0;

front_coil_offset_x = 95.0; // from the left
front_coil_offset_z = 105.0; // from the top
front_coil_notch_width = 20.0;

front_wall_part_width = 70.0;

cf_center_x = 117.0;
cf_plate_width = 100.0;
cf_plate_depth = 100.0;
cf_nema_mount_offset = 31.0;
cf_nema_offset_y = 14.0;//25.0;
cf_nema_center_diameter = 22.4;
cf_nema_width = 42.0;
cf_nema_height = 50.0; // approx

filament_wall = 0.4;

cf_space = 1.0;
cf_extra_space = 0.0;
cf_insert_diameter = 80.0;
cf_insert_height = 80.0; // Max insert height + magnet mount
cf_base_height = 15.0;
cf_base_diameter = 45.0;
cf_base_gap = 2.0;
cf_base_mark_size = 2.0;
cf_drop_diameter = 15.0;

cf_base_slope = 30.0; // degrees
cf_top_slope = 45.0;  // degrees

cf_drop_slope = ((cf_insert_diameter + case_thickness - (cf_base_diameter - cf_base_gap)) / 2 + cf_space - cf_drop_diameter) / 2 - 4 * filament_wall; // Make sure there are at least 2 walls
cf_drop_slope_ext = 1.9;

assert(cf_insert_diameter >= cf_base_diameter + 2 * cf_drop_diameter);

cf_magnet_offset = 16.0;
cf_magnet_diameter = 8.2;
cf_magnet_height = 3.2;
cf_magnet_bottom_ext = 0.2;
cf_magnet_bottom_height_ext = 0.2;

cf_engrave_dimensions = false;
cf_text_depth = 0.4;
cf_text_size = 14.0;
cf_text_cal_size = 8.0;
cf_text_center_offset = 0.0;
cf_text_name_offset = 10.0; // Move the title up when the name is specified
cf_text_height = 15.0;

cf_hex_height = 7.0;
cf_hex_diameter = 14.8;

cf_slide_height = 40.0;
cf_side_mount_z = 10.0;

cf_holder_width = 20.0;
cf_holder_length = cf_nema_offset_y + cf_nema_mount_offset / 2 + top_mount_y_offset + case_thickness + cf_holder_width / 2;
cf_wall_height = cf_slide_height + cf_insert_height + case_thickness;

cf_top_holder_x = 20.0;
cf_top_holder_z = 30.0;
cf_top_holder_holes_offset = 20.0;

cf_holder_extra_x = 14.5;
cf_holder_front_x = 12.5; // slope width
cf_holder_rear_x = 26.0;

cf_funnel_magnet_offset_y = 5.0;
cf_funnel_magnet_offset_z = 6.6;
cf_funnel_magnet_mount_z = -0.45;
cf_magnet_cover_gap = 1.0;

cf_center_y = - cf_nema_offset_y - cf_nema_mount_offset / 2 - cf_insert_diameter / 2 + cf_drop_diameter / 2;

cf_drop_tube_offset = 40.0;
cf_drop_tube_length = 70.0;
cf_drop_tube_thickness = 2.0;

cf_top_diameter = 15.0;

mount_tube_length = 50.0;
tube_hole_diameter = 15.0;
tube_wall_thickness = 2.0;
tube_diameter = tube_hole_diameter + 2 * tube_wall_thickness;

drop_connector_gap = 0.2;

mount_size = 10.0;

/* Small sensor data
sensor_mount_height = 50.0;
sensor_angle = 210;
sensor_diameter = 13.0;
sensor_hex_diameter = 20.0;
sensor_hex_height = 4.0;
sensor_housing_diameter = 20.93;
sensor_housing_length = 25.0;
sensor_hex_offset = 3.0;
*/
sensor_mount_height = 70.0;
sensor_angle = 225;
sensor_diameter = 18.6;
sensor_hex_diameter = 28.0;
sensor_hex_height = 4.6;
sensor_housing_diameter = 30.0;
sensor_housing_length = 20.0;
sensor_hex_offset = 5.0;


sensor_low_mounts = false;
drop_total_length = 200.0; // How far is the collator from the feeder

cf_magnet_cover_height = 1.2; // How much material should be over/under the magnet
cf_magnet_cover_radius = 1.0; // Around the magnet

cf_magnet_holder_cover_radius = 10.0; // around the magnet on the insert holder

drop_funnel_magnet_offset = tube_diameter / 2 + cf_magnet_diameter / 2 + cf_magnet_bottom_ext / 2 + cf_magnet_cover_radius;

drop_funnel_mount_height = cf_magnet_height + cf_magnet_bottom_height_ext + cf_magnet_cover_height;
drop_funnel_mount_diameter = 30.0;
drop_funnel_mount_holes_diameter = 5.0;
drop_funnel_mount_holes_slope = 1.0;
drop_funnel_mount_holes_offset = 5.0;

drop_funnel_label_width = 10;
drop_funnel_label_height = 2;
drop_funnel_label_length = 100;
drop_funnel_label_depth = 0.4;

drop_funnel_side_magnet_height = 120;

collator_drop_tube_adjustment = -57; // Probably can be calculated

letter_size_margin = 4.0;

ch_top_z = 121.0;

ch_drop_slope = 10.0;

ch_support_depth = 20.0;

ch_insert_letter_depth = 0.4;
ch_insert_letter_size = 8.0;
ch_insert_back_letter_size = 10.0;

ch_top_thickness = 5.0;
ch_top_width = 50.0;
ch_top_depth = 80.0;

ch_insert_diff = 5.0;
ch_bottom_slope = 2.0;

ch_mounts = [[0, -18.5], [-18.5, 33.5], [18.5, 18.0]];

ch_height_discard = 2.0; // If it's this height of less, discard the insert
ch_height_minimum = 3.0; // If insert is between "discard" and "minimum", use the minimum

coil_diameter = 36.0;
coil_height = 29.0;
coil_z = 127.0;
coil_bottom_clearance = 3.0; 

coil_insert_height = 20.0;

coil_insert_width = 5.0;

servo_width = 10.0;
servo_hole_width = 4.9;
servo_hole_height = 3.0;
servo_arm_length = 30.0;
servo_arm_thickness = 3.0;

servo_mount_offset = 27.8;
servo_center_offset = 5.4;
servo_block_width = 24.0; 
servo_block_depth = 12.6;

servo_mount_height = 23.0;
servo_mount_offset_z = 11.8;
servo_mount_holder_width = 33.0;

servo_connect_diameter = 10.0;
servo_connect_z = 40.0;

servo_mount_top_clearance = 1.0;

servo_z = ch_top_z / 2;

collator_diameter = 192.0;
collator_angle = 30.0;
collator_top_mount_offset = 108.6;
collator_top_mount_diff = 30.0;
collator_bottom_mount_offset = 15.5;
collator_bottom_mount_diff = 20.0;
collator_bottom_mount_heigth = 7.0;

// Angled mount
collator_mount_height = 120.0;
collator_mount_depth = 39.0;
collator_mount_width = 70.0;
collator_mount_offset = -10.1;

collator_drop_offset = 129.0;
collator_drop_height = 132.0;
collator_stand_depth = 20.0;
collator_stand_offset = 15.0;
collator_stand_bottom_extra = 20.0;
collator_stand_bottom_height = 5.0;

collator_drop_x = cf_center_x;
collator_drop_y = collator_drop_offset + cf_center_y + cf_insert_diameter - cf_drop_diameter;
collator_drop_z = collator_drop_height + case_x + cf_wall_height;

collator_stand_x = cf_center_x;
collator_stand_y = 129.0;
collator_stand_z = 537.0;
collator_stand_height = 100.0;
collator_stand_diameter = 30.0;
collator_stand_center_z = -50.0;
collator_stand_slope_diameter = 50.0;

collator_stand_top_height = 50.0;
collator_stand_top_overlap = 0.0; // to increase the overlap part, probably not necessary
collator_stand_overlap_thickness = 5.0;

top_mount_x_diff_rear = 40.0;
top_mount_x_offset_rear = cf_center_x - case_x / 2;
top_mount_y_diff_rear = 30.0;
top_mount_y_offset_rear = - cf_center_y - collator_mount_depth * sin(collator_angle) +collator_mount_offset;

power_cover_thickness = 1.0;
power_cover_width = 46.4;
power_cover_depth = 27.2;
power_cover_height = 27.0;
power_cover_gap_size = 5.0;

power_connector_mount_width = 20.0;
power_connector_x_diff = 49.6;
power_connector_y_diff = 151.0;
power_connector_head_width = 7.0;
power_connector_head_height = 4.0;
power_connector_head_holder_width = 10.0;
power_connector_head_holder_height = 8.0;
power_connector_small_mount_width = 20.0;
power_connector_small_diff = 54.8;
power_connector_small_head_width = 5.8;
power_connector_small_head_height = 3.0;
power_connector_small_mount_offset = 30.0;
power_connector_small_mount_x_offset = 20.0;
power_connector_thickness = 5.0;
power_connector_angle = atan2(power_connector_x_diff, power_connector_y_diff);

nema_insert_outside_diameter = 7.0;
nema_insert_inside_diameter = 5.4;
nema_insert_height = 11.0;
nema_insert_hole_height = 2.2; // to the lower part of the hole
nema_hole_diameter = 4.4;
nema_insert_extra_height = 5.0;

m2_5_diameter = 2.6;

ch_case_difference = servo_mount_top_clearance + ch_top_thickness + coil_height / 2 + ch_insert_diff;


button_caption = ["START", "MODE", "TIME"]; // from bottom to top

$fn = 120;

// TOP WALL

module top_wall_embossed () {
  // top
  translate([0, 0, case_z - case_thickness])
    cube([case_x, case_y, case_thickness]);
    
  // top mount assembly blocks
  // front
  for (y = [-top_mount_y_diff_front / 2, top_mount_y_diff_front / 2]) {
    for (x = [-top_mount_x_diff_front / 2, top_mount_x_diff_front / 2]) {
      translate([case_x / 2 + x - ab_width / 2, case_thickness + top_mount_y_offset + y - ab_depth / 2, case_z - case_thickness - ab_height / 2])
        cube([ab_width, ab_depth, ab_height / 2]);
    }
  }
  // rear
  for (y = [-top_mount_y_diff_rear / 2, top_mount_y_diff_rear / 2]) {
    for (x = [-top_mount_x_diff_rear / 2, top_mount_x_diff_rear / 2]) {
      translate([case_x / 2 + x - ab_width / 2 + top_mount_x_offset_rear, case_y - case_thickness - top_mount_y_offset_rear + y - ab_depth / 2, case_z - case_thickness - ab_height / 2])
        cube([ab_width, ab_depth, ab_height / 2]);
    }
  }
     
  // front assembly blocks
  translate([0, 0, case_z - ab_height - 2 * case_thickness])
    front_assembly_blocks_embossed();
}

module top_wall_engraved () {
  // top mount holes
  // front
  for (y = [-top_mount_y_diff_front / 2, top_mount_y_diff_front / 2]) {
    for (x = [-top_mount_x_diff_front / 2, top_mount_x_diff_front / 2]) {
      translate([case_x / 2 + x, case_thickness + top_mount_y_offset + y, case_z - case_thickness - ab_height / 2 + m4_nut_height / 2])
        union () {
          m4_nut_hole();
          translate([0, 0, case_thickness * 3.5])
            m4_bolt_hole();
        }
    }
  }

  // rear
  collator_mount_holes_engraved();
      
  // pump hole
  translate([case_x - case_thickness - pump_hole_x, case_y - case_thickness - pump_hole_y, case_z])
    cylinder(h = 2 * case_thickness, d = pump_hole_diameter, center = true);


  if (top_insert_mount_enabled) {
    translate([case_thickness + front_wall_part_width / 2 + insert_mount_x_offset, insert_mount_y_offset_top, case_z])
      rotate([0, 0, 180])
        ch_mount_magnet_holes();
  }

  if (top_funnel_mounts_enabled) {
    for(y = [1 : top_funnel_mounts_number]) {
      translate([case_x - case_thickness - top_funnel_mount_x_offset - drop_funnel_magnet_offset, top_funnel_mount_y_diff * y + top_funnel_mount_y_offset, case_z])
        for (x = [ - drop_funnel_magnet_offset, drop_funnel_magnet_offset]) {
          translate([x, 0, - cf_magnet_height / 2])
            cylinder(h = cf_magnet_height, d = cf_magnet_diameter, center = true);
      }
    }
  }

  zvs_mount_engraved();
  zvs_mount_embossed();
    
  // covered by front, back, left, and right
  front_wall_embossed();
  rear_wall_embossed();
  left_wall_embossed();
  right_wall_embossed();
    
  // sanity check
  vq_fan();

  translate([0, 0, case_z - ab_height * 2])
    front_assembly_blocks_engraved(180);
    
  assembly_blocks_engraved();
  case_edge_engraved();
}

// BOTTOM WALL

module bottom_wall_embossed () {
  // floor
  cube([case_x, case_y, case_thickness]);
    
  // power supply holder
  translate([case_thickness + power_width, case_y - case_thickness - power_depth - power_holder_thickness - ab_depth, case_thickness])
    cube([power_holder_thickness, power_depth + power_holder_thickness, power_holder_z]);
    
  translate([case_thickness, case_y - case_thickness - power_holder_thickness - power_depth - ab_depth, case_thickness])
    cube([power_width + power_holder_thickness, power_holder_thickness, power_holder_z]);
    
  translate([case_thickness + ab_width * 2, case_y - case_thickness -  ab_depth, case_thickness])
    cube([power_width + power_holder_thickness - ab_width * 2, power_holder_thickness, power_holder_z]);
    
  // board stands
  for (x = [0, board_x1, board_x1 + board_x2]) {
    for (y = [0, board_y]) {
      translate([case_thickness + power_width + board_x_offset + x, case_y - case_thickness - board_y_offset - y, case_thickness + board_z / 2])
        cylinder(h = board_z, d = board_z_width, center = true);

      // bolt hole
      translate([case_thickness + power_width + board_x_offset + x, case_y - case_thickness - board_y_offset - y, case_thickness + (m3_head_height + bolt_margin) / 2])
        cylinder(h = m3_head_height + bolt_margin, d = m3_head_diameter + bolt_margin * 2, center = true);
    }
  }
    
  // assembly blocks
  bottom_assembly_blocks();

  // front assembly blocks
  front_assembly_blocks_embossed();
}

module bottom_wall_engraved () {
  // board stands
  for (x = [0, board_x1, board_x1 + board_x2]) {
    for (y = [0, board_y]) {
      translate([case_thickness + power_width + board_x_offset + x, case_y - case_thickness - board_y_offset - y, board_z + case_thickness])
        cylinder(h = 2 * (board_z + case_thickness), d = m3_diameter, center = true);
      // bolt holes for M3
      translate([case_thickness + power_width + board_x_offset + x, case_y - case_thickness - board_y_offset - y, m3_head_height / 2])
        cylinder(h = m3_head_height, d = m3_head_diameter, center = true);
    }
  }

  front_assembly_blocks_engraved();

  // covered by front, back, left, and right
  left_wall_embossed();
  right_wall_embossed();
  front_wall_embossed();
  rear_wall_embossed(); 
  case_edge_engraved();
}

// LEFT WALL

module left_wall_embossed () {
  // left wall
  cube([case_thickness, case_y, case_z]);    
    
  left_assembly_blocks();
}

module left_wall_engraved () {
  vent_hole();
    
  translate([-case_thickness, case_y - case_thickness - ab_depth - power_sq_vents_y1 - power_sq_vents_width, case_thickness + power_sq_vents_z])
    cube([case_thickness * 4, power_sq_vents_width, power_sq_vents_height]);

  translate([-case_thickness, case_y - case_thickness - ab_depth - power_sq_vents_y2 - power_sq_vents_width, case_thickness + power_sq_vents_z])
    cube([case_thickness * 4, power_sq_vents_width, power_sq_vents_height]);

  // Covered by front and back, covers bottom and top
  front_wall_embossed();
  rear_wall_embossed();
    
  assembly_blocks_engraved();
  case_edge_engraved();
}

// RIGHT WALL

module right_wall_embossed () {
  // right wall
  translate([case_x - case_thickness, 0, 0])
    cube([case_thickness, case_y, case_z]);   

  // pump holder
  translate([case_x - case_thickness - pump_width, case_y - case_thickness - ab_depth - pump_depth, case_z - case_thickness - pump_height - pump_holder_height])
    difference () {
      pump_holder();
      pump_holder_holes();
    }

  right_assembly_blocks();
}

module right_wall_engraved () {
  // Radiator fan hole
  translate([case_x - 0.5 * case_thickness, case_thickness + radiator_y_center, case_thickness + radiator_z_center])
    rotate([0, 90, 0])
      difference () {
        cylinder(h = 2 * case_thickness, d = radiator_diameter, center = true);
        union () {
          cylinder(h = 2 * case_thickness, d = radiator_center_diameter, center = true);
          rotate([90, 0, 45])
            cube([fan_diameter, case_thickness, radiator_mount_width], center = true); 
          rotate([90, 0, 135])
            cube([fan_diameter, case_thickness, radiator_mount_width], center = true); 
        }
      }
    
  // Radiator mount holes
  for (y = [- radiator_mount_y_diff / 2, radiator_mount_y_diff / 2]) {
    for (z = [-radiator_mount_z_diff /2, radiator_mount_z_diff / 2]) {
      translate([case_x, case_thickness + radiator_y_center + y, radiator_z_center + case_thickness + z])
        rotate([90, 0, 90])
          m3_bolt_hole();
    }
  }

  // Covered by front and back, covers bottom and top
  front_wall_embossed();
  rear_wall_embossed();
    
  assembly_blocks_engraved();  
  case_edge_engraved();
}

// FRONT WALL LEFT

module front_wall_left_embossed () {
  // front wall
  translate([0, 0, 0])
    cube([front_wall_part_width, case_thickness, case_z]);

  if (front_insert_mount_enabled) {
    translate([front_wall_part_width / 2 + insert_mount_x_offset, insert_mount_y_offset -ch_top_depth, insert_mount_z_offset])
      rotate([0, 0, 180])
        hull () {
          for (xy = ch_mounts) {
            translate([xy[0], xy[1], - case_thickness / 2])
              cylinder(h = case_thickness, d = cf_magnet_diameter + cf_magnet_holder_cover_radius, center = true);  
          }
        }

    hull () {
      translate([front_wall_part_width / 2, case_thickness / 4, insert_mount_z_offset - case_thickness / 2])
        cube([front_wall_part_width / 2, case_thickness / 2, case_thickness], center = true);
      
      translate([front_wall_part_width / 2, case_thickness / 4, insert_mount_z_offset - case_thickness / 2 - insert_mount_z_rib])
        sphere(case_thickness / 2);

      translate([front_wall_part_width / 2 + insert_mount_x_offset, insert_mount_y_offset -ch_top_depth, insert_mount_z_offset])
      rotate([0, 0, 180])
            translate([ch_mounts[0][0], ch_mounts[0][1], - case_thickness / 2])
              cylinder(h = case_thickness, d = cf_magnet_diameter + cf_magnet_holder_cover_radius, center = true);  
    }
  }
}

module front_wall_left_engraved () {
  assembly_blocks_engraved();
  translate([front_wall_part_width - ab_width / 2, - ab_depth / 2, ab_height / 2 + case_thickness])
    rotate([90, 0, 0])
      single_assembly_block_engraved();
  translate([front_wall_part_width - ab_width / 2, - ab_depth / 2, case_z - ab_height /2 - case_thickness])
    rotate([90, 180, 0])
      single_assembly_block_engraved();

  front_assembly_blocks_engraved();
  translate([0, 0, case_z - ab_height - 2 * case_thickness])
    front_assembly_blocks_engraved();

  if (front_insert_mount_enabled) {
    translate([front_wall_part_width / 2 + insert_mount_x_offset, insert_mount_y_offset -ch_top_depth, insert_mount_z_offset])
      rotate([0, 0, 180])
        ch_mount_magnet_holes();
  }

  case_edge_engraved();
}

module front_wall_center_embossed () {
  // front wall, bottom part
  translate([front_wall_part_width, 0, 0])
    cube([case_x - 2 * front_wall_part_width, case_thickness, ch_top_z + ch_top_thickness / 2]);  

  // mount strips
  translate([front_wall_part_width, 0, 0])
    cube([cf_center_x - ch_top_width /2 - case_thickness / 2 - front_wall_part_width, case_thickness, case_z]);  
  translate([cf_center_x + ch_top_width /2 + case_thickness / 2, 0, 0])
    cube([(case_x - front_wall_part_width )- (cf_center_x + ch_top_width /2 + case_thickness / 2) , case_thickness, case_z]);  

  // left coil wall
  translate([cf_center_x - ch_top_width /2 - case_thickness / 2, cf_center_y / 2 + case_thickness / 2, (case_z + ch_top_z) / 2 - ch_top_thickness / 4 ])
    cube([case_thickness, case_thickness - cf_center_y, case_z - ch_top_z + ch_top_thickness /2 ], center = true);

  // right coil wall
  translate([cf_center_x + ch_top_width /2 + case_thickness / 2, cf_center_y / 2 + case_thickness / 2, (case_z + ch_top_z) / 2 - ch_top_thickness / 4])
    cube([case_thickness, case_thickness - cf_center_y, case_z - ch_top_z + ch_top_thickness / 2], center = true);

  // round cover
  translate([cf_center_x, cf_center_y, case_z - cf_drop_tube_length / 2 - case_thickness / 2])
    difference () {
      difference () {
        cylinder(h = cf_drop_tube_length + case_thickness, d = ch_top_width + 2 * case_thickness, center = true);
        cylinder(h = cf_drop_tube_length + case_thickness, d = ch_top_width, center = true);
      };
      translate([0, ch_top_width / 2 + case_thickness, 0])
        cube([ch_top_width + 2 * case_thickness, ch_top_width + 2 * case_thickness, cf_drop_tube_length + case_thickness], center = true);
    }

  // case holder top plate
  case_holder_top();
}

// FRONT WALL CENTER

module front_wall_center_engraved () {
  // Servo connect hole
  translate([cf_center_x, 0, case_thickness + servo_connect_z])
    rotate([90, 0, 0])
      cylinder(h = 2 * case_thickness, d = servo_connect_diameter, center = true);

  // Covers all walls
 
  case_feeder_drop();
  
  zvs_mount_engraved();

  front_assembly_blocks_engraved();
  translate([0, 0, case_z - ab_height - 2 * case_thickness])
    front_assembly_blocks_engraved();

  difference () {
    case_edge_engraved();
    union () {
      // left coil wall
      translate([cf_center_x - ch_top_width /2 - case_thickness / 2, cf_center_y / 2 + case_thickness / 2, ch_top_z * 1.5 + ch_top_thickness * 0.75 ])
        cube([case_thickness, case_thickness - cf_center_y, case_z - ch_top_z + ch_top_thickness /2 ], center = true);

      // right coil wall
      translate([cf_center_x + ch_top_width /2 + case_thickness / 2, cf_center_y / 2 + case_thickness / 2, ch_top_z * 1.5 + ch_top_thickness * 0.75])
        cube([case_thickness, case_thickness - cf_center_y, case_z - ch_top_z + ch_top_thickness / 2], center = true);
    }
  }
}

// FRONT WALL RIGHT

module front_wall_right_embossed () {
  // front wall
  translate([case_x - front_wall_part_width, 0, 0])
  cube([front_wall_part_width, case_thickness, case_z]);


    
  for(n = [0:2]) {
    // button
    translate([case_x - case_thickness - button_row_offset, 0, case_thickness + button_z_offset + n * button_vertical_space + button_label_offset])
      cube([button_label_width, button_label_depth, button_label_height], center = true);

    // button text
    translate([case_x - case_thickness - button_row_offset, - button_label_depth / 2, case_thickness + button_z_offset + n * button_vertical_space + button_label_offset])
      rotate([90, 0, 0])
        linear_extrude(button_label_depth)
          text(button_caption[n], size = 8, halign = "center", valign = "center");
  }
}

module front_wall_right_engraved () {
  translate([case_x - front_wall_part_width + ab_width / 2, - ab_depth /2 , ab_height / 2 + case_thickness])
    rotate([90, 0, 0])
      single_assembly_block_engraved();
  translate([case_x - front_wall_part_width + ab_width / 2, - ab_depth /2, case_z - ab_height /2 - case_thickness])
    rotate([90, 180, 0])
      single_assembly_block_engraved();
    
  for (n = [0:2]) {
    // button
    translate([case_x - case_thickness - button_row_offset, 0, case_thickness + button_z_offset + n * button_vertical_space])
      rotate([90, 0, 0])
        cylinder(h = 2 * case_thickness, d = button_diameter, center = true);
  }

  // LED
  led_center_x = case_x - case_thickness - button_row_offset;
  led_center_z = case_thickness + button_z_offset + 3.25 * button_vertical_space;
  
  // Visible part of LED
  translate([led_center_x, 0, led_center_z + (led_height - led_height_visible)/2])
    cube([led_width, 2 * case_thickness, led_height_visible], center = true);

  translate([led_center_x, case_thickness, led_center_z ])
    cube([led_width, case_thickness, led_height], center = true);
    
  // Space for wires
  translate([led_center_x, case_thickness, led_center_z + led_z_diff / 2])
    cube([2 * led_margin, case_thickness, led_margin], center = true);
  translate([led_center_x, case_thickness, led_center_z - led_z_diff / 2])
    cube([4 * led_margin, case_thickness, led_margin], center = true);   
    
  for (x = [ -led_x_diff / 2, led_x_diff / 2]) {
    for (z = [ -led_z_diff / 2, led_z_diff / 2]) {
      translate([led_center_x + x, - case_thickness + m2_head_height * 2, led_center_z + z])
        rotate([90, 0, 0])
          m2_bolt_hole();
    }
  }

  assembly_blocks_engraved();

  front_assembly_blocks_engraved();
  translate([0, 0, case_z - ab_height - 2 * case_thickness])
    front_assembly_blocks_engraved();

  case_edge_engraved();
}

// REAR WALL

module rear_wall_embossed () {
  // rear wall
  translate([0, case_y - case_thickness, 0])
    cube([case_x, case_thickness, case_z]);

  // power48v mounts
  for (x = [power_mount_x1, power_mount_x2]){
    for (z = [power_mount_z1, power_mount_z2]) {
      translate([case_thickness + x, case_y - ab_width, case_thickness + z])
        rotate([90, 0, 0])
          cylinder(h = ab_width, d = m4_head_diameter + 2 * bolt_margin, center = true);
    }
  }
}

module rear_wall_engraved () {
  // power48v mounts
  for (x = [power_mount_x1, power_mount_x2]){
    for (z = [power_mount_z1, power_mount_z2]) {
      translate([case_thickness + x, case_y, case_thickness + z])
        rotate([90, 0, 0]) 
          union () {
            cylinder(h = m4_head_height * 2, d = m4_head_diameter, center = true);
            cylinder(h = ab_width * 4, d = m4_diameter, center = true);
          }
    }
  }

  // USB hole
  translate([power_width + board_x_offset + board_usb_x + case_thickness, case_y - 1.5 * case_thickness, board_z + case_thickness + board_usb_z])
    cube([board_usb_size, 2 * case_thickness, board_usb_size]);  

  // Power outlet hole
  translate([power_outlet_offset_x + case_thickness, case_y, power_outlet_offset_z + case_thickness])
    cube([power_outlet_width, 4 * case_thickness, power_outlet_height], center = true);

  // Power outlet mounts
  for (x = [-power_outlet_hole_x / 2, power_outlet_hole_x / 2]) {
    translate([power_outlet_offset_x + case_thickness + x, case_y, power_outlet_offset_z + case_thickness + power_outlet_height / 2 - power_outlet_hole_z])
      rotate([90, 0, 0])
        cylinder(h = 4 * case_thickness, d = m4_diameter, center = true);
  }
    
  // Rear fan
  translate([case_thickness + fan_x_center, case_y - 0.5 * case_thickness, fan_z_center - case_thickness])
    rotate([90, 90, 0])
      difference () {
        cylinder(h = 2 * case_thickness, d = fan_diameter, center = true);
        union () {
          cylinder(h = 2 * case_thickness, d = fan_center_diameter, center = true);
          rotate([90, 0, 45])
            cube([fan_diameter, case_thickness, fan_mount_width], center = true); 
          rotate([90, 0, 135])
            cube([fan_diameter, case_thickness, fan_mount_width], center = true); 
        }
      }
    
  // Fan mount holes
  for (x = [-fan_mount_offset / 2, fan_mount_offset / 2]) {
    for (z = [-fan_mount_offset /2, fan_mount_offset / 2]) {
      translate([case_thickness + fan_x_center + x, case_y, fan_z_center - case_thickness + z])
        rotate([270, 90, 0])
          m3_bolt_hole();
    }
  }

  // Relay mount
  for (z = [- relay_mount_diff /2, relay_mount_diff / 2]) {
    translate([case_thickness + relay_x_offset + relay_width / 2, case_y, case_thickness + relay_z_offset + z + relay_depth / 2])
      rotate([270, 90, 0])
        m4_bolt_hole();
  }

  // 12V power out
  translate([case_thickness + power12_out_offset_x, case_y, case_z - case_thickness - power12_out_offset_z])
    rotate([90, 0, 0])
      cylinder(h = 2 * case_thickness, d = power12_out_diameter, center = true);

  // Covers all walls

  assembly_blocks_engraved();
  case_edge_engraved();
}

// ZVS MOUNT

module zvs_mount_embossed () {
  translate([case_thickness + zvs_mount_x_offset + ab_width / 2, case_thickness + zvs_mount_y_offset + zvs_holder_diameter / 2, case_z - case_thickness - zvs_mount_z_offset - zvs_z_diff - zvs_holder_diameter / 2])
    union () {
      cube([zvs_mount_thickness, zvs_y_diff, zvs_z_diff + zvs_mount_z_offset + zvs_holder_diameter / 2]);
      translate([0, - zvs_holder_diameter / 2, zvs_holder_diameter /2])
        cube([zvs_mount_thickness, zvs_y_diff + zvs_holder_diameter, zvs_z_diff + zvs_mount_z_offset]);
    };

  for (y = [-zvs_y_diff / 2, zvs_y_diff / 2]) {
    for (z = [-zvs_z_diff / 2, zvs_z_diff / 2]) {
      // Holder
      translate([case_thickness + zvs_mount_x_offset + zvs_mount_thickness / 2, case_thickness + zvs_mount_y_offset + zvs_y_diff / 2 + zvs_holder_diameter / 2 + y, case_z - case_thickness - zvs_mount_z_offset - zvs_z_diff / 2 + z])
        rotate([90, 0, 90])
          cylinder(h = ab_width + zvs_mount_thickness, d = zvs_holder_diameter, center = true);
    }

    // Assembly block
    translate([case_thickness + zvs_mount_x_offset - ab_width / 2, case_thickness + zvs_mount_y_offset + zvs_y_diff / 2 + y - ab_depth / 2 + zvs_holder_diameter / 2, case_z - case_thickness - ab_height])
      cube([ab_width, ab_depth, ab_height]);
  }
    
  // Middle assembly block
  translate([case_thickness + zvs_mount_x_offset - ab_width * 2.5, case_thickness + zvs_mount_y_offset + zvs_y_diff / 2 - ab_depth / 2 + zvs_holder_diameter / 2, case_z - case_thickness - ab_height])
    cube([ab_width * 3, ab_depth, ab_height]);
    
  // Front assembly block
  translate([case_thickness + zvs_mount_x_offset - ab_width / 2, case_thickness, case_z - case_thickness - zvs_front_mount_z_offset - ab_height - zvs_mount_extra_ab_offset])
    cube([ab_width, ab_depth, ab_height]);

  // Connecting block
  translate([case_thickness + zvs_mount_x_offset + zvs_mount_thickness, case_thickness, case_z - case_thickness - zvs_front_mount_z_offset - ab_height - zvs_mount_extra_ab_offset])
    cube([zvs_mount_thickness, ab_depth, ab_height + zvs_mount_extra_ab_offset]);
}

module zvs_mount_engraved () {
  for (y = [-zvs_y_diff / 2, zvs_y_diff / 2]) {
    for (z = [-zvs_z_diff / 2, zvs_z_diff / 2]) {
      translate([case_thickness + zvs_mount_x_offset + zvs_mount_thickness / 2, case_thickness + zvs_mount_y_offset + zvs_y_diff / 2 + zvs_holder_diameter / 2 + y, case_z - case_thickness - zvs_mount_z_offset - zvs_z_diff / 2 + z])
        rotate([90, 0, 90])
          cylinder(h = ab_width + zvs_mount_thickness * 2, d = m4_diameter, center = true);
    }

    // Assembly block holes
    translate([case_thickness + zvs_mount_x_offset, case_thickness + zvs_mount_y_offset + zvs_y_diff / 2 + zvs_holder_diameter / 2 + y, case_z - case_thickness - ab_height * 0.5])
      rotate([180, 180, 0])
        union () {
          m4_hole_and_drop(ab_height);
          m4_assembly_block_hole_slim();
        }
  }
    
  // Middle assembly holes
  translate([case_thickness + zvs_mount_x_offset - ab_height * 2, case_thickness + zvs_mount_y_offset + zvs_y_diff / 2 + zvs_holder_diameter / 2, case_z - case_thickness - ab_height * 0.5])
    rotate([180, 180, 0])
      union () {
        m4_hole_and_drop(ab_height);
        m4_assembly_block_hole_slim();
      }

  // Front assembly holes
  translate([case_thickness + zvs_mount_x_offset, case_thickness + ab_depth / 2, case_z - case_thickness - zvs_front_mount_z_offset - ab_height / 2 - zvs_mount_extra_ab_offset])
    rotate([90, 180, 0])
      union () {
        m4_hole_and_drop(ab_height);
        m4_assembly_block_hole_slim();
      }

  // Holes to mount current sensor
  for (y = [- zvs_sensor_diff / 2, zvs_sensor_diff /2]) {
    translate([case_thickness + zvs_mount_x_offset + zvs_mount_thickness + m3_head_height, case_thickness + zvs_mount_y_offset + zvs_y_diff / 2 + zvs_holder_diameter / 2 + zvs_sensor_offset + y, case_z - case_thickness - zvs_mount_z_offset - zvs_z_diff])
      rotate([90, 0, 90])
        m3_bolt_hole(); 
  }
    
  // Central hole
  translate([case_thickness + zvs_mount_x_offset, case_thickness + zvs_mount_y_offset + zvs_mount_thickness + zvs_holder_diameter / 2, case_z - case_thickness - zvs_mount_z_offset - zvs_z_diff + zvs_mount_thickness])
    cube([zvs_mount_thickness * 4, zvs_y_diff - 2 * zvs_mount_thickness, zvs_z_diff - 2 * zvs_mount_thickness + zvs_mount_extra_z_hole]);
}

// ZVS SENSOR

module zvs_sensor_embossed () {
  cube([zvs_sensor_diff, zvs_sensor_width, zvs_sensor_height], center = true);
  for (x = [- zvs_sensor_diff / 2, zvs_sensor_diff /2]) {
    translate([x, 0, zvs_sensor_space/2])
      cylinder(h = zvs_sensor_height + zvs_sensor_space, d = zvs_sensor_width, center = true);
  }
}

module zvs_sensor_engraved () {
  for (x = [- zvs_sensor_diff / 2, zvs_sensor_diff /2]) {
    translate([x, 0, m3_head_height * 2])
      m3_bolt_hole();
  }
}

// CASE FEEDER BASE

module case_feeder_base_embossed (width, diameter, height, slope = 0) {
  translate([0, 0, height / 2])
    cylinder(h = height, d2 = diameter, d1 = diameter * cos(slope), center = true);
}

module case_feeder_base_engraved (width) {
  case_feeder_insert_engraved_common(width, cf_base_height, "");
  translate([0, 0, cf_base_height - cf_magnet_height])
    case_feeder_insert_engraved_magnet_holes();
  translate([0, 0, cf_hex_height / 2])
    hexagon(h = cf_hex_height, d = cf_hex_diameter);
  translate([0, 0, cf_base_height])
    m4_bolt_hole();
  translate([cf_base_diameter / 2 - cf_base_mark_size, 0, cf_base_height - cf_base_mark_size/2])
    cube([cf_base_mark_size, cf_base_mark_size, cf_base_mark_size], center = true);
}

// CASE FEEDER BODY

module case_feeder_body_embossed () {
  translate([cf_center_x, - cf_nema_offset_y - cf_nema_mount_offset / 2, case_z + case_thickness / 2])
    union() {
      // Walls
      translate([0, 0, (cf_wall_height - case_thickness) / 2]) 
        cylinder(h = cf_wall_height, d = cf_insert_diameter + 2 * cf_space + 2 * case_thickness, center = true);
      translate([cf_holder_extra_x / 2, 0, (cf_wall_height - case_thickness) / 2])
        cube([cf_holder_extra_x, cf_insert_diameter + 2 * cf_space + 2 * case_thickness, cf_wall_height], center = true);
      // Front slope
      translate([cf_holder_extra_x + cf_holder_front_x, -(cf_insert_diameter / 2 + cf_space + case_thickness), case_thickness / 2])
        rotate([0, 0, 90])
          prism(case_thickness, cf_holder_front_x, cf_wall_height - case_thickness);
      // Rear slope
      translate([cf_holder_extra_x+ cf_holder_rear_x, cf_insert_diameter / 2 + cf_space, case_thickness / 2])
        rotate([0, 0, 90])
          prism(case_thickness, cf_holder_rear_x, cf_wall_height - case_thickness);
      
      // Bottom right part
      translate([cf_holder_extra_x, 0, 0])
        union () {
          cylinder(h = case_thickness, d = cf_insert_diameter + 2 * cf_space + 2 * case_thickness, center = true);
          translate([0, 0, - case_thickness / 2])
            cube([cf_insert_diameter / 2 + cf_space + case_thickness, cf_insert_diameter / 2+ cf_space + case_thickness, case_thickness]);
        }
    }

  for (x = [-top_mount_x_diff_front / 2, top_mount_x_diff_front / 2]) {
    translate([case_x / 2 + x - cf_holder_width / 2, case_thickness + top_mount_y_offset - cf_holder_length + cf_holder_width / 2, case_z])
      rounded_bar(cf_holder_length, cf_holder_width, case_thickness);
    
    for (y = [-top_mount_y_diff_front / 2, top_mount_y_diff_front / 2]) {
      translate([case_x / 2 + x, case_thickness + top_mount_y_offset + y, case_z + case_thickness + m4_nut_height / 2])
        cylinder(h = m4_head_height, d = m4_head_diameter + case_thickness, center = true);
    }
  }
    
  // front cover
  translate([cf_center_x, cf_center_y, case_z + case_thickness / 2])
    cylinder(h = case_thickness, d = ch_top_width + 2 * case_thickness, center = true);
  
  // Magnet holder

  translate([cf_center_x, - cf_nema_offset_y - cf_nema_mount_offset / 2 + cf_space + cf_insert_diameter / 2 + (cf_magnet_height + cf_magnet_cover_height), case_z + cf_wall_height])
    union () {
      translate([0, cf_funnel_magnet_offset_y, cf_funnel_magnet_offset_z])
        union () {
          rotate([270, 0, 0])
            cylinder(h = cf_magnet_height + cf_magnet_cover_height, d = cf_magnet_diameter + 
cf_magnet_cover_radius * 2, center = true);
          translate([0, 0, -(cf_magnet_diameter + 
cf_magnet_cover_radius * 2) / 4 - cf_magnet_cover_gap / 2])
            cube([cf_magnet_diameter + 
cf_magnet_cover_radius * 2, cf_magnet_height + cf_magnet_cover_height, (cf_magnet_diameter + 
cf_magnet_cover_radius * 2 )/ 2 + cf_magnet_cover_gap], center = true);
        }
  
      hull () {
        translate([0, cf_funnel_magnet_offset_y, cf_funnel_magnet_offset_z -(cf_magnet_diameter + cf_magnet_cover_radius * 2)/ 2 - cf_magnet_cover_gap])
          cube([cf_magnet_diameter + 
cf_magnet_cover_radius * 2, cf_magnet_height + cf_magnet_cover_height, filament_wall], center = true);
        
        translate([0, 0, cf_funnel_magnet_mount_z])
          cube([cf_magnet_diameter + 
cf_magnet_cover_radius * 2, filament_wall, filament_wall], center = true);

      
        translate([0, 0, cf_funnel_magnet_mount_z - 2 * cf_funnel_magnet_offset_y])
          cube([cf_magnet_diameter + 
cf_magnet_cover_radius * 2, filament_wall, filament_wall], center = true);
       };
    };
}

module case_feeder_body_engraved () {
  for (x = [-cf_nema_mount_offset / 2, cf_nema_mount_offset / 2]) {
    for (y = [-cf_nema_mount_offset / 2, cf_nema_mount_offset / 2]) {
      translate([x + cf_center_x, y - cf_nema_offset_y - cf_nema_mount_offset / 2, case_z + 2.5 * m4_head_height])
        m3_bolt_hole();
    }
  }

  // Walls
  translate([cf_center_x, - cf_nema_offset_y - cf_nema_mount_offset / 2, case_z + case_thickness * 1.5])
    union () {
      translate([0, 0, (cf_wall_height - case_thickness) / 2]) 
        cylinder(h = cf_wall_height, d = cf_insert_diameter + 2 * cf_space + case_thickness, center = true);
      translate([cf_holder_extra_x / 2 + cf_insert_diameter / 2, 0, (cf_wall_height - case_thickness) / 2])
        cube([cf_holder_extra_x + cf_insert_diameter, cf_insert_diameter + 2 * cf_space + case_thickness, cf_wall_height], center = true);
    }

  translate([cf_center_x, - cf_nema_offset_y - cf_nema_mount_offset / 2, case_z])
    cylinder(h = 4 * case_thickness, d = cf_nema_center_diameter, center = true);
    
  // Drop hole
  translate([cf_center_x, - cf_nema_offset_y - cf_nema_mount_offset / 2 - cf_insert_diameter / 2 + cf_drop_diameter / 2, case_thickness  + case_z])
    cylinder(h = 2 * case_thickness, d = cf_drop_diameter, center = true);
        
  // Drop hole mounting holes
  for (x = [- cf_drop_tube_offset / 2, cf_drop_tube_offset / 2]) {
    translate([cf_center_x + x, - cf_nema_offset_y - cf_nema_mount_offset / 2 - cf_insert_diameter / 2 + cf_drop_diameter / 2, case_thickness /2 + case_z + m3_head_height * 2])
      union () {
        m3_bolt_hole();
        translate([0, 0, - case_thickness - m3_nut_height /2])
          m3_nut_hole();
      }
  }
    
  // Side bolt holes
  translate([cf_center_x, - cf_nema_offset_y - cf_nema_mount_offset / 2, case_z + case_thickness + cf_side_mount_z]) {
    for (angle = [60, -15, -90]) {
      rotate([0, 0, angle])
        translate([- cf_insert_diameter/2 - cf_space - m4_head_height, 0, 0])
          rotate([0, 90, 0])
            m4_bolt_hole();
    }
  }

  // top mount holes
  for (y = [-top_mount_y_diff_front / 2, top_mount_y_diff_front / 2]) {
    // front
    for (x = [-top_mount_x_diff_front / 2, top_mount_x_diff_front / 2]) {
      translate([case_x / 2 + x, case_thickness + top_mount_y_offset + y, case_z - case_thickness - ab_height / 2 + m4_nut_height / 2])
        union () {
          m4_nut_hole();
          translate([0, 0, case_thickness * 3.5])
            m4_bolt_hole();
        }
    }
  }
  
  // Magnet hole (+ cf_magnet_cover_height
  translate([cf_center_x, - cf_nema_offset_y - cf_nema_mount_offset / 2 + cf_space + cf_insert_diameter / 2 + cf_magnet_height, case_z + cf_wall_height])
      translate([0, cf_funnel_magnet_offset_y, cf_funnel_magnet_offset_z])
          rotate([270, 0, 0])
            cylinder(h = cf_magnet_height , d = cf_magnet_diameter, center = true);
  
}

// CASE FEEDER SLIDE

module case_feeder_slide_embossed (){
  insert_diameter = cf_insert_diameter + 2 * cf_space + case_thickness;
  insert_width =  (cf_insert_diameter + case_thickness - (cf_base_diameter - cf_base_gap) - 2 * cf_extra_space) / 2;
  

  translate([cf_center_x, - cf_nema_offset_y - cf_nema_mount_offset / 2, case_z + case_thickness * 0.5 + (cf_slide_height) / 2])
    union () {
      difference () {
        union () {
          cylinder(h = cf_slide_height - case_thickness, d = cf_insert_diameter + 2 * cf_space + case_thickness, center = true);
          translate([cf_holder_extra_x / 2, 0, 0])
            cube([cf_holder_extra_x, cf_insert_diameter + 2 * cf_space + case_thickness, cf_slide_height - case_thickness], center = true);
        };

        translate([cf_insert_diameter / 2 + cf_holder_extra_x, 0, 0])
          cube([cf_insert_diameter, cf_insert_diameter + 2 * cf_space + case_thickness, cf_slide_height - case_thickness], center = true);
      };


    // Front slope
    translate([cf_holder_extra_x + cf_holder_front_x, - insert_diameter / 2, - cf_slide_height / 2 + case_thickness / 2])
      rotate([0, 0, 90])
        prism(insert_width, cf_holder_front_x, cf_slide_height - case_thickness);
    // Rear slope
    translate([cf_holder_extra_x+ cf_holder_rear_x, insert_diameter / 2 - insert_width, - cf_slide_height / 2 + case_thickness / 2])
      rotate([0, 0, 90])
        prism(insert_width, cf_holder_rear_x, cf_slide_height - case_thickness);
    }
}

module case_feeder_slide_engraved (){
  drop_x = cf_center_x;
  drop_y = - cf_nema_offset_y - cf_nema_mount_offset / 2 - cf_insert_diameter / 2 + cf_drop_diameter / 2;

  hull () {
    // Drop hole
    translate([cf_center_x, drop_y, case_thickness /2  + case_z + cf_slide_height / 2])
      cylinder(h = cf_slide_height - case_thickness, d1 = cf_drop_diameter, d2 = cf_drop_diameter + cf_drop_slope, center = true);

    // Slope
    translate([cf_center_x, drop_y - cf_drop_slope_ext / 2, case_thickness / 2 + case_z + cf_slide_height / 2])
      cylinder(h = cf_slide_height - case_thickness, d1 = cf_drop_diameter -  cf_drop_slope_ext, d2 = cf_drop_diameter + cf_drop_slope + cf_drop_slope_ext, center = true);

    // Lower slope left
    for (angle = [10]) {
      translate([cf_center_x - sin(angle) * (cf_insert_diameter / 2 - cf_drop_diameter / 2), drop_y - (cos(angle) - 1) * (cf_insert_diameter / 2 - cf_drop_diameter / 2), case_thickness / 2 + case_z + cf_slide_height / 2])
        cylinder(h = cf_slide_height - case_thickness, d1 = 0, d2 = cf_drop_diameter, center = true);
    }
    // Lower slope right
    translate([cf_center_x + cf_drop_diameter / 2 - cf_drop_slope_ext * 1.5, drop_y - cf_drop_slope_ext / 2, case_thickness / 2 + case_z + cf_slide_height / 2])
      cylinder(h = cf_slide_height - case_thickness, d1 = 0, d2 = cf_drop_diameter + cf_drop_slope + cf_drop_slope_ext, center = true);
  }

  // Central hole
  translate([cf_center_x, - cf_nema_offset_y - cf_nema_mount_offset / 2, case_z + case_thickness + cf_slide_height / 2])
    union () {
      cylinder(h = cf_slide_height, d = cf_base_diameter - cf_base_gap + 2 * (cf_space + cf_extra_space), center = true); 
      translate([(cf_base_diameter - cf_base_gap)/ 2 + cf_space, 0, 0])
        cube([cf_base_diameter - cf_base_gap + 2 * (cf_space + cf_extra_space), cf_base_diameter - cf_base_gap + 2 * (cf_space + cf_extra_space), cf_slide_height], center = true);
    }

  // Side bolt holes
  translate([cf_center_x, - cf_nema_offset_y - cf_nema_mount_offset / 2, case_z + case_thickness + cf_side_mount_z])
    for (angle = [60, -15, -90]) {
      rotate([0, 0, angle])
        translate([- cf_insert_diameter/2 - cf_space - m4_head_height, 0, 0])
          rotate([0, 90, 0])
            union () {
              m4_bolt_hole();
              translate([0, 0, case_thickness])
                m4_hole_and_drop(cf_top_holder_z);
              cylinder(h = cf_insert_diameter, d = m4_diameter, center = true);
            }
    }

  // Space for NEMA17 mounts
  for (x = [-cf_nema_mount_offset / 2, cf_nema_mount_offset / 2]) {
    for (y = [-cf_nema_mount_offset / 2, cf_nema_mount_offset / 2]) {
      translate([x + cf_center_x, y - cf_nema_offset_y - cf_nema_mount_offset / 2, case_z +  m3_head_height / 2 + case_thickness])
        cylinder(h = 1.5 * m3_head_height, d = m3_head_diameter * 1.5, center = true);
    }
  }
 
  // Drop hole mounting holes: extension for bolts
  for (x = [- cf_drop_tube_offset / 2, cf_drop_tube_offset / 2]) {
    translate([cf_center_x + x, - cf_nema_offset_y - cf_nema_mount_offset / 2 - cf_insert_diameter / 2 + cf_drop_diameter / 2, case_thickness + case_z])
      cylinder(h = case_thickness, d = m3_diameter, center = true);
  }
    
  // Rotation notch
  translate([cf_center_x - cf_base_mark_size, - cf_nema_offset_y + cf_drop_diameter -  2 * cf_base_mark_size, case_thickness  + case_z + cf_slide_height - case_thickness])
    cube([cf_base_mark_size, cf_base_mark_size, 2 * cf_base_mark_size], center = true);
}

// CASE FEEDER DROP

module case_feeder_drop_embossed (){
  drop_width = cf_drop_diameter + cf_drop_tube_thickness * 2;
  drop_length = cf_top_holder_holes_offset + drop_width / 2;
    
  translate([cf_center_x, - cf_nema_offset_y - cf_nema_mount_offset / 2 - cf_insert_diameter / 2 + cf_drop_diameter / 2, case_z - cf_drop_tube_length / 2])
    cylinder(h = cf_drop_tube_length, d1 = cf_drop_diameter + cf_drop_tube_thickness, d2 = cf_drop_diameter + 2 * cf_drop_tube_thickness, center = true); 

  intersection () {
    translate([0, 0, - case_thickness])
      case_feeder_body_embossed();
    translate([cf_center_x, - cf_nema_offset_y - cf_nema_mount_offset / 2 - cf_insert_diameter / 2 + cf_drop_diameter / 2, case_z - case_thickness / 2])
      rotate([0, 0, 90])
        rounded_bar_centered(drop_length, drop_width, case_thickness);
  }
    
  // Mounts
  for (x = [- cf_drop_tube_offset / 2, cf_drop_tube_offset / 2]) {
    translate([cf_center_x + x, - cf_nema_offset_y - cf_nema_mount_offset / 2 - cf_insert_diameter / 2 + cf_drop_diameter / 2, case_thickness /2 + case_z - case_thickness - m3_head_height])
      cylinder(h = m3_head_height, d = m3_head_diameter + cf_drop_tube_thickness, center = true);
  }
}

module case_feeder_drop_engraved (){
  translate([cf_center_x, - cf_nema_offset_y - cf_nema_mount_offset / 2 - cf_insert_diameter / 2 + cf_drop_diameter / 2, case_z - cf_drop_tube_length / 2])
    cylinder(h = cf_drop_tube_length, d1 = cf_drop_diameter, d2 = cf_drop_diameter + cf_drop_tube_thickness, center = true); 

  // Drop hole mounting holes
  for (x = [- cf_drop_tube_offset / 2, cf_drop_tube_offset / 2]) {
    translate([cf_center_x + x, - cf_nema_offset_y - cf_nema_mount_offset / 2 - cf_insert_diameter / 2 + cf_drop_diameter / 2, case_z - case_thickness])
      m3_bolt_hole();
  }
}

// CASE FEEDER INSERT

module case_feeder_insert_embossed (width, diameter, height) {
  translate([0, 0, height / 2])
    cylinder(h = height, d = diameter, center = true);
}

module case_feeder_insert_engraved (width, height, name) {
  case_feeder_insert_engraved_common(width, height);
  case_feeder_insert_engraved_magnet_holes(cf_magnet_diameter + cf_magnet_bottom_ext, cf_magnet_height + cf_magnet_bottom_height_ext);
  if (cf_engrave_dimensions) {
    translate([cf_text_center_offset, name ? cf_text_name_offset : 0, height - cf_text_depth])
      linear_extrude(cf_text_depth) 
        text(str(width, "×", height), size = cf_text_size, halign = "center", valign = "center", font = "Anton");
  }
  if (name) {
    translate([cf_text_center_offset, 0, height - cf_text_depth])
      rotate([0, 0, 45])
        resize([cf_insert_diameter - cf_drop_diameter, 0, 0], [true, false, false])
          linear_extrude(cf_text_depth) 
            text(str(name), size = cf_text_cal_size, halign = "center", valign = "center", font = "Anton");
    }
}

module case_feeder_insert_engraved_common (width, height, name) {
  for (angle = [0, 90, 180, 270]) {
    // Case holders
    rotate([0, 0, angle])
      translate([cf_insert_diameter / 2 - width / 2, 0, height / 2])
        union () {
          cylinder(h = height, d = width, center = true);
          translate([width / 2, 0, 0])
            cube([width, width, height], center = true);

          // lower cone
          translate([0, 0, (cf_drop_diameter - width - height) / 2]) 
            union () {
              cylinder(h = cf_drop_diameter - width, d1 = cf_drop_diameter, d2 = width, center = true);
              translate([0, - cf_drop_diameter /2 , - (cf_drop_diameter - width) / 2])
                prism(cf_drop_diameter, (cf_drop_diameter - width) / 2, cf_drop_diameter - width);
              rotate([0, 0, 180])
                translate([-cf_drop_diameter, - cf_drop_diameter / 2, - (cf_drop_diameter - width) / 2])
                  prism(cf_drop_diameter, (cf_drop_diameter - width) / 2, cf_drop_diameter - width);
            }
                            
            // top cone
            translate([0, 0, (height + width - cf_drop_diameter)/ 2 ] ) 
              rotate([0, 180, 180])
                union () {
                  cylinder(h = cf_drop_diameter - width, d1 = cf_drop_diameter, d2 = width, center = true);
                  translate([0, - cf_drop_diameter / 2, - (cf_drop_diameter - width) / 2])
                    prism(cf_drop_diameter, (cf_drop_diameter - width) / 2, cf_drop_diameter - width);
                  rotate([0, 0, 180])
                    translate([-cf_drop_diameter, - cf_drop_diameter / 2, - (cf_drop_diameter - width) / 2])
                      prism(cf_drop_diameter, (cf_drop_diameter - width) / 2, cf_drop_diameter - width);
                }
        }
    }
}

module case_feeder_insert_engraved_magnet_holes (diameter = cf_magnet_diameter, height = cf_magnet_height) {
  // Magnet holes
  for (angle = [0, 90, 180, 270]) {
    rotate([0, 0, angle + 45])
      translate([cf_magnet_offset, 0, height / 2])
        cylinder(h = height, d = diameter, center = true);
  }
}

// CASE HOLDER TOP

module case_holder_top_embossed () {
  translate([cf_center_x - ch_top_width /2, (cf_center_y )/ 2, ch_top_z  - ch_top_thickness / 2])
    cube([ch_top_width, -cf_center_y / 2 , ch_top_thickness]);
    
  translate([cf_center_x, cf_center_y, ch_top_z])
    union () {
      translate([0, ch_top_depth / 4, 0])
        cube([ch_top_width, ch_top_depth / 2, ch_top_thickness], center = true);
      intersection () {
        cube([ch_top_width, ch_top_depth, ch_top_thickness], center = true);
        cylinder(h = ch_top_thickness, d = ch_top_width, center = true);
      }
    }
}

module case_holder_top_engraved () {
  translate([cf_center_x, cf_center_y, ch_top_z - ch_top_thickness / 2])
    union () {
      translate([0, 0, ch_top_thickness / 2])
        cylinder(h = ch_top_thickness, d2 = cf_drop_diameter + ch_drop_slope, d1 = cf_drop_diameter, center = true);
      translate([0, 0, (cf_magnet_height + cf_magnet_bottom_height_ext) ])
        ch_mount_magnet_holes(diameter = cf_magnet_diameter + cf_magnet_bottom_ext, height = cf_magnet_height + 2 * cf_magnet_bottom_height_ext);

      // A hole for servo arm screw
      translate([0, servo_arm_length, (cf_magnet_height + cf_magnet_bottom_height_ext) / 2])
        cylinder(h = (cf_magnet_height + cf_magnet_bottom_height_ext), d = cf_magnet_diameter + cf_magnet_bottom_ext, center = true);
    }
}

// CASE HOLDER INSERT

module case_holder_insert_embossed ( case_width, case_height, caliber ) {
  translate([0, 0, -case_height / 2])
    union () {
      translate([0, ch_top_depth / 4, 0])
        cube([ch_top_width, ch_top_depth / 2, case_height], center = true);
        intersection () {
          cube([ch_top_width, ch_top_depth, case_height], center = true);
          cylinder(h = case_height, d = ch_top_width, center = true);
        };
      }
}

module case_holder_insert_engraved ( case_width, case_height, caliber ) {
  translate([0, 0, - case_height + ch_bottom_slope / 2])
    cylinder(h = ch_bottom_slope, d1 = ch_bottom_slope + case_width, d2 = case_width, center = true);

  translate([0, 0, - case_height / 2])
    union () {
      cylinder(h = case_height, d2 = cf_drop_diameter, d1 = case_width, center = true);

      // Bottom magnets
      translate([0, 0, cf_magnet_height + cf_magnet_bottom_height_ext - case_height / 2])
        ch_mount_magnet_holes(diameter = cf_magnet_diameter + cf_magnet_bottom_ext, height = cf_magnet_height + cf_magnet_bottom_height_ext);

      // Top magnets
      translate([0, 0, case_height / 2])
        ch_mount_magnet_holes();
      
      // Text: side
      translate([ch_top_width / 2 - ch_insert_letter_depth, ch_top_depth / 4, 0])
        rotate([90, 0, 90])
          resize([ch_top_depth / 2, 0, 0])
            linear_extrude(ch_insert_letter_depth)
              text(str(caliber, " "), size = min(ch_insert_letter_size, max(case_height - case_thickness, ch_insert_letter_size - letter_size_margin)), halign = "center", valign = "center", font = "Anton");

      // Text: back
      translate([0, ch_top_depth / 2 - ch_insert_letter_depth, 0])
        rotate([90, 0, 180])
          resize([ch_top_width - case_thickness, 0, 0])
            linear_extrude(ch_insert_letter_depth)
              text(str(caliber, " "), size = min(ch_insert_back_letter_size, max(case_height - case_thickness, ch_insert_letter_size - letter_size_margin)), halign = "center", valign = "center", font = "Anton");
   

    }
  // A hole for servo arm screw
  translate([0, servo_arm_length, (cf_magnet_diameter + cf_magnet_bottom_ext) / 2 - case_height])
    cylinder(h = cf_magnet_diameter + cf_magnet_bottom_ext, d1 = cf_magnet_diameter + cf_magnet_bottom_ext, d2 = 0, center = true);
}

// SERVO HOLDER

module servo_holder_embossed () {
  translate([cf_center_x, cf_center_y, servo_z - servo_arm_thickness - servo_hole_height - servo_mount_height / 2])
    union () {
      translate([0, ch_top_depth / 4, 0])
        cube([ch_top_width, ch_top_depth / 2, servo_mount_height], center = true);
      intersection () {
        cube([ch_top_width, ch_top_depth, servo_mount_height], center = true);
        cylinder(h = servo_mount_height, d = ch_top_width, center = true);
      };
    }

  translate([cf_center_x, cf_center_y, servo_z + servo_mount_top_clearance])
    ch_mount_magnet_holes(diameter = cf_magnet_diameter + 3, height = servo_arm_thickness + servo_hole_height + servo_mount_top_clearance);
}

module servo_holder_engraved () {
  translate([cf_center_x, cf_center_y, servo_z])
    union () {
      cylinder(h = ch_top_z, d = cf_drop_diameter, center = true);
      translate([0, 0, - servo_mount_height / 2 - servo_arm_thickness - servo_hole_height])
        cylinder(h = servo_mount_height, d2 = cf_drop_diameter + ch_drop_slope, d1 = cf_drop_diameter, center = true);
            
      // servo
      translate([servo_center_offset, servo_arm_length, - servo_mount_height / 2 - servo_arm_thickness - servo_hole_height])
        union () {
          cube([servo_block_width, servo_block_depth, servo_mount_height], center = true);
      
          // servo mount
          translate([0, 0, servo_mount_offset_z])
            cube([servo_mount_holder_width, servo_block_depth, servo_mount_height], center = true);
      
          for (x = [-servo_mount_offset/2, servo_mount_offset/2]) {
            translate([x, 0, m2_length / 2])
              rotate([0, 0, 30])
                m2_bolt_hole();
            translate([x, 0, - servo_mount_height / 2])
              rotate([0, 0, 30])
                m2_nut_hole(servo_mount_height / 2);
          }
        };

      // Top magnets
      translate([0, 0, servo_mount_top_clearance ])
        ch_mount_magnet_holes();

      // Bottom magnets
      translate([0, 0, - servo_mount_height - servo_arm_thickness - servo_hole_height + cf_magnet_height])
        ch_mount_magnet_holes();
    }
}

module ch_mount_magnet_holes (diameter = cf_magnet_diameter, height = cf_magnet_height) {
  for (xy = ch_mounts) {
    translate([xy[0], xy[1], - height / 2])
      cylinder(h = height, d = diameter, center = true);  
  }
}

module rounded_bar(length, width, height) {
  cube([width, length, height]);
  translate([width/2,0,0])
    cylinder(h = height, d = width);
  translate([width/2,length,0])
    cylinder(h = height, d = width);
}

module rounded_bar_centered (length, width, height) {
  translate([- width / 2, -length / 2, - height / 2])
    rounded_bar(length, width, height);
}

// COLLATOR MOUNT

module collator_angled_mount_embossed () {
  translate([collator_mount_width / 2, collator_mount_depth / 2, collator_mount_height / 2])
    difference () {
      cube([collator_mount_width, collator_mount_depth, collator_mount_height + collator_bottom_mount_heigth], center = true);
      translate([0, - collator_diameter / 2 - collator_mount_offset,collator_bottom_mount_heigth])
        cylinder(h = collator_mount_height, d = collator_diameter, center = true);
    }
}

module collator_angled_mount_engraved () {
  // bottom holes
  for (x = [ - collator_bottom_mount_diff / 2, collator_bottom_mount_diff / 2]) {
    translate([x + collator_mount_width / 2, collator_bottom_mount_offset + collator_mount_offset, 0])
        union () {
          cylinder(h = collator_mount_height, d = m4_diameter, center = true);
          translate([0, 0, -6])
            m4_nut_hole();
          translate([0, 0, -8])
            m4_nut_hole();
        }
  }
  
  // top holes
  for (x = [ - collator_top_mount_diff / 2, collator_top_mount_diff / 2]) {
    translate([x + collator_mount_width / 2, 0, collator_top_mount_offset + collator_bottom_mount_heigth])
      rotate([90, 0, 0])
        union () {
          cylinder(h = collator_mount_height, d = m4_diameter, center = true);
          translate([0, 0, -40])
            m4_nut_hole();
        }
  }

  translate([collator_mount_width / 2, collator_mount_depth / 2 - collator_diameter / 2 - collator_mount_offset, collator_mount_height / 2 + collator_bottom_mount_heigth])
        cylinder(h = collator_mount_height, d = collator_diameter, center = true);
}

module collator_mount_embossed () {
  translate([collator_stand_x, collator_stand_y + collator_mount_width * sin(collator_angle), case_z  + (collator_stand_z - case_z - collator_stand_top_height)/ 2])
    cylinder(h = collator_stand_z - case_z - collator_stand_top_height, d = collator_stand_diameter, center = true);
  
  translate([collator_stand_x, collator_stand_y + collator_mount_width * sin(collator_angle), collator_stand_z - 2 * collator_stand_top_height])
    cylinder(h = collator_stand_top_height, d1 = collator_stand_diameter, d2 = collator_stand_diameter + 2 * collator_stand_overlap_thickness + filament_wall, center = true);
  
      
  // Stand base
  translate([collator_stand_x, collator_stand_y + collator_mount_width * sin(collator_angle), case_z + case_thickness - collator_stand_bottom_height / 2])
    union () {
      resize([collator_mount_width, collator_stand_depth + 2 * collator_stand_bottom_extra, collator_stand_bottom_height])
      cylinder(d = collator_mount_width, h = collator_stand_bottom_height, center = true);

      // Stand base sphere
      translate([0, 0, collator_stand_bottom_height / 2])
        resize([collator_mount_width, collator_stand_depth + 2 * collator_stand_bottom_extra, collator_stand_bottom_height * 2])
        sphere(d = collator_mount_width);
      
      // 45 degree slope
      translate([0, 0, collator_stand_slope_diameter / 2])
        cylinder(h = collator_stand_slope_diameter, d2 = 0, d1 = collator_stand_slope_diameter, center = true);
    }
}

module collator_mount_engraved () {
  translate([collator_stand_x, collator_stand_y + collator_mount_width * sin(collator_angle), collator_stand_z - collator_stand_top_height -ab_height])
    rotate([90, 0, 0])
      union() {
        m4_hole(4 * m4_length);
        rotate([0, 0, 90])
          union () {
            translate([0, 0, ab_height]) m4_hole_and_drop(ab_height);
            translate([0, 0, -ab_height]) m4_hole_and_drop(ab_height);
          };
      };

  collator_mount_holes_engraved();
}

module collator_mount_top_embossed () {
  hull () {
    translate([collator_stand_x - collator_mount_width / 2, collator_stand_y, collator_stand_z])
      rotate([- collator_angle, 0, 0])
        collator_angled_mount();
    translate([collator_stand_x, collator_stand_y + collator_mount_width * sin(collator_angle), collator_stand_z + collator_stand_center_z])
      sphere(d = collator_stand_diameter);
  };
  
  translate([collator_stand_x, collator_stand_y + collator_mount_width * sin(collator_angle), collator_stand_z + collator_stand_center_z])
    cylinder(h = collator_stand_top_overlap + collator_stand_top_height, d = collator_stand_diameter + 2 * collator_stand_overlap_thickness + filament_wall, center = true);  
}

module collator_mount_top_engraved () {
  translate([collator_stand_x - collator_mount_width / 2, collator_stand_y, collator_stand_z])
    union () {
      rotate([- collator_angle, 0, 0])
        collator_angled_mount_engraved();
    };
    
  translate([collator_stand_x, collator_stand_y + collator_mount_width * sin(collator_angle), case_z  + (collator_stand_z - case_z - collator_stand_top_height)/ 2])
    cylinder(h = collator_stand_z - case_z - collator_stand_top_height, d = collator_stand_diameter + filament_wall, center = true);

  translate([collator_stand_x, collator_stand_y + collator_mount_width * sin(collator_angle), collator_stand_z - collator_stand_top_height + (collator_stand_diameter + filament_wall) / 2])
    cylinder(h = collator_stand_diameter + filament_wall, d1 = collator_stand_diameter + filament_wall, d2 = 0, center = true);
    
  collator_mount_engraved();
  collator_mount_holes_engraved();
}

module collator_mount_holes_engraved () {
  for (y = [-top_mount_y_diff_rear / 2, top_mount_y_diff_rear / 2]) {
    for (x = [-top_mount_x_diff_rear / 2, top_mount_x_diff_rear / 2]) {
      translate([case_x / 2 + x + top_mount_x_offset_rear, case_y - case_thickness - top_mount_y_offset_rear + y, case_z - case_thickness - ab_height / 2 + m4_nut_height / 2])
        union () {
          m4_nut_hole();
          translate([0, 0, 3 * case_thickness])
            rotate([180, 0, 0])
              m4_bolt_hole();
        }
    }
  }
}

// COIL INSERT

module coil_insert_embossed () {
  translate([cf_center_x, cf_center_y, ch_top_z + ch_top_thickness / 2 + coil_insert_height / 2])
    union () {
      translate([0, ch_top_depth / 4, 0])
        cube([ch_top_width, ch_top_depth / 2, coil_insert_height], center = true);
      hull () {
        cylinder(h = coil_insert_height, d = ch_top_width, center = true);
      
        translate([0, - filament_wall / 2, 0])
          cube([ch_top_width + case_thickness * 2, filament_wall, coil_insert_height], center = true);
      }
    } 
}

module coil_insert_engraved () {
  translate([cf_center_x, cf_center_y, ch_top_z + ch_top_thickness / 2 + coil_insert_height / 2])
    union () {
      translate([0, ch_top_depth / 4, 0])
        cube([coil_diameter, ch_top_depth / 2, coil_insert_height], center = true);
        cylinder(h = coil_insert_height, d = coil_diameter, center = true);

    }
  front_wall_center();
}

// POWER COVER

module power_cover_embossed () {
  cube([power_cover_width + 2 * power_cover_thickness, power_cover_depth + 2 * power_cover_thickness, power_cover_height + power_cover_thickness], center = true);
}

module power_cover_engraved () {
  translate([0, 0, power_cover_thickness])
    cube([power_cover_width, power_cover_depth, power_cover_height], center = true);
  translate([0, power_cover_depth / 2, power_cover_thickness])
    cube([power_cover_gap_size, power_cover_thickness * 2, power_cover_height], center = true);
}

// POWER CONNECTOR

module power_connector_embossed () {
  for (x = [0, power_connector_x_diff]) {
    for (y = [0,  power_connector_y_diff]) {
      translate([x, y, power_connector_thickness / 2])
        cylinder(h = power_connector_thickness, d = power_connector_mount_width, center = true);

      translate([x, y, power_connector_head_holder_height / 2])
        cylinder(h = power_connector_head_holder_height, d = power_connector_head_holder_width, center = true);
    }
  }

  translate([0, 0, power_connector_thickness / 2])
    linear_extrude(power_connector_thickness, center = true)
      union () {
        polygon(points = [
          [0 - power_connector_mount_width / 2 * cos(power_connector_angle), 0 + power_connector_mount_width / 2 * sin(power_connector_angle)],
          [power_connector_x_diff - power_connector_mount_width /2 * cos(power_connector_angle), power_connector_y_diff + power_connector_mount_width /2 * sin(power_connector_angle)],
          [power_connector_x_diff + power_connector_mount_width /2 * cos(power_connector_angle), power_connector_y_diff - power_connector_mount_width /2 * sin(power_connector_angle)],
          [0 + power_connector_mount_width /2 * cos(power_connector_angle), 0 - power_connector_mount_width /2 * sin(power_connector_angle)]]);

        polygon(points = [
          [0 - power_connector_mount_width / 2 * cos(power_connector_angle), power_connector_y_diff - power_connector_mount_width / 2 * sin(power_connector_angle)],
          [0 + power_connector_mount_width /2 * cos(power_connector_angle), power_connector_y_diff + power_connector_mount_width /2 * sin(power_connector_angle)],
          [power_connector_x_diff + power_connector_mount_width /2 * cos(power_connector_angle), 0 + power_connector_mount_width /2 * sin(power_connector_angle)],
          [power_connector_x_diff - power_connector_mount_width /2 * cos(power_connector_angle), 0 - power_connector_mount_width /2 * sin(power_connector_angle)]]);
      }

  for (y = [power_connector_small_mount_offset, power_connector_small_mount_offset + power_connector_small_diff]) {
    translate([power_connector_small_mount_x_offset + power_connector_x_diff / 2, y, power_connector_thickness / 2])
      cylinder(h = power_connector_thickness, d = power_connector_small_mount_width, center = true);
  }

  translate([power_connector_small_mount_x_offset + power_connector_x_diff / 2, power_connector_small_diff / 2 + power_connector_small_mount_offset, power_connector_thickness / 2])
    cube([power_connector_small_mount_width, power_connector_small_diff, power_connector_thickness], center = true);
}

module power_connector_engraved () {
  for (x = [0, power_connector_x_diff]) {
    for (y = [0,  power_connector_y_diff]) {
      translate([x, y, power_connector_thickness / 2])
        cylinder(h = power_connector_thickness * 2, d = m4_diameter, center = true);
            
      translate([x, y, power_connector_head_holder_height])
        cylinder(h = power_connector_head_height * 2, d = power_connector_head_width, center = true);
    }
  }

  for (y = [power_connector_small_mount_offset, power_connector_small_mount_offset + power_connector_small_diff]) {
    translate([power_connector_small_mount_x_offset + power_connector_x_diff / 2, y, power_connector_thickness / 2])
      cylinder(h = power_connector_thickness * 2, d = m3_diameter, center = true);
    
    translate([power_connector_small_mount_x_offset + power_connector_x_diff / 2, y, 0])
      cylinder(h = power_connector_small_head_height * 2, d = power_connector_small_head_width, center = true);
  }
}

// COLLATOR DROP

module collator_drop () {
  // Plate
  collator_drop_plate();
  
  // Tube
  difference () {
    translate([24.5, 38, 10 * sin(30)])
      rotate([0, 30, 0])
        collator_drop_tube();
    union () {
      collator_drop_plate_embossed();
      collator_drop_plate_engraved();
      collator_drop_tube_drop_funnel();
    }
  }
}

module collator_drop_plate_embossed () {
  translate([0, 0, 0])
    cube([49.5, 74.6, 10.0]);

  for (y = [0, 74.6]) {
    translate([0, y, 3.65])
      rotate([45, 0, 0])
        cube([49.5, 2.65, 2.65]);
  }
}

module collator_drop_plate_engraved () {
  translate([10, 17.3, 3.3])
    rotate([0, 90, 0]) 
      cylinder(h = 40, d = 3.5, center = true);
  translate([13, 17.3, 4])
    rotate([0, -90, 0])
      m3_hole_and_drop(7);
  
  translate([20, 0, 0])
    cube([19.2, 54.3, 5]);
  
  for (x = [20, 39.2]) {
    translate([x, 0, 0.7])
      rotate([45, 0, 90])
        cube([54.3, 1.5, 1.5]);
  }

  translate([20, 20.3, 0])
    cube([19.2, 34.0, 11]);
  
  translate([-100, -100, -40])
    cube([200, 200, 40]);
}

module collator_drop_tube_embossed () {
  translate([0, 0, mount_tube_length / 2])
    cylinder(h = mount_tube_length, d = tube_diameter, center = true);

  translate([0, 0, 0])
    hull () {
      translate([0, 0, 30])
        cylinder(h = 1, d = tube_diameter, center = true);
      translate([0, 0, -2])
        cube([25, 60, 1], center = true);
    };
    
  // Mount
  tube_mount(mount_tube_length - 5);
}

module collator_drop_tube_engraved () {
  translate([0, 0, mount_tube_length / 2 - collator_drop_tube_adjustment])
    cylinder(h = mount_tube_length - collator_drop_tube_adjustment, d = tube_hole_diameter, center = true);
}

module collator_drop_tube_drop_funnel () {
  translate([0, 0, 15])
    hull () {
      translate([26, 38, 20 * sin(30)])
        rotate([0, 30, 0])
          translate([10 * cos(30), 0, 10])
          cylinder(h = 1, d = tube_hole_diameter, center = true);
      translate([20, 20.3, -5])
        cube([19.2, 34.0, 1]);
    };  
}

module proximity_sensor_mount_embossed () {
  // Top
  translate([0, 0, sensor_mount_height - mount_size - sensor_housing_diameter /2])
    cylinder(h = 2 * mount_size + sensor_housing_diameter, d = tube_hole_diameter + 4 * tube_wall_thickness, center = true);

  // Middle
  translate([0, 0, sensor_mount_height / 2 - mount_size / 2 - sensor_housing_diameter / 2])
    cylinder(h = sensor_mount_height - 3 * mount_size - sensor_housing_diameter, d1 = tube_hole_diameter + 2 * tube_wall_thickness, d2 = tube_hole_diameter + 4 * tube_wall_thickness, center = true);

  // Bottom
  translate([0, 0, mount_size / 2])
    cylinder(h = mount_size, d = tube_hole_diameter + 2 * tube_wall_thickness, center = true);

  // Top mounts
  rotate([0, 0, 90])
    translate([0, 0, sensor_mount_height - mount_size / 2])
      cube([tube_hole_diameter + 4 * tube_wall_thickness + 2 * mount_size, 6 * tube_wall_thickness, mount_size], center = true);
  

  translate([tube_wall_thickness * 3, - (tube_hole_diameter + 4 * tube_wall_thickness + 2 * mount_size) / 2, sensor_mount_height - mount_size])
    rotate([0, 180, 0])
      prism(6 * tube_wall_thickness, 6 * tube_wall_thickness,  6 * tube_wall_thickness);
  translate([- tube_wall_thickness * 3, (tube_hole_diameter + 4 * tube_wall_thickness + 2 * mount_size) / 2, sensor_mount_height - mount_size])
    rotate([180, 0, 0])
      prism(6 * tube_wall_thickness, 6 * tube_wall_thickness,  6 * tube_wall_thickness);

  // Bottom
  if (sensor_low_mounts) {
    rotate([0, 0, 90])
      translate([0, 0, mount_size / 2])
        cube([tube_hole_diameter + 4 * tube_wall_thickness + 2 * mount_size, tube_wall_thickness, mount_size], center = true);
  }

  rotate([0, 0, sensor_angle])
    union () {
      // Main part of the sensor holder
      translate([(tube_hole_diameter + 4 * tube_wall_thickness) / 2  + sensor_housing_length / 2, 0, sensor_mount_height - 2 * mount_size - sensor_housing_diameter /2])
        rotate([0, 90, 0])
          cylinder(h = sensor_housing_length, d = sensor_housing_diameter, center = true);
      
      // Connection to the drop_funnel
      hull () {
        translate([(tube_hole_diameter + 4 * tube_wall_thickness) / 2  + drop_connector_gap/ 2, 0, sensor_mount_height - 2 * mount_size - sensor_housing_diameter /2])
          rotate([0, 90, 0])
            cylinder(h = drop_connector_gap, d = sensor_housing_diameter, center = true);
        translate([0, 0, sensor_mount_height - 2 * mount_size - sensor_housing_diameter /2])
          cylinder(h = sensor_housing_diameter, d = tube_hole_diameter + 4 * tube_wall_thickness, center = true);
       
      };
      // Support
      hull () {
        translate([(tube_hole_diameter + 4 * tube_wall_thickness) / 2 + sensor_housing_length, 0, sensor_mount_height - 2 * mount_size - sensor_housing_diameter /2 - 0.1])
          rotate([0, 90, 0])
            cylinder(h = 0.2, d = sensor_housing_diameter, center = true);

        translate([0, 0, sensor_mount_height - 2 * mount_size - sensor_housing_diameter /2 - 0.1])
          cylinder(h = 0.2, d = tube_hole_diameter + 4 * tube_wall_thickness, center = true);

        translate([tube_hole_diameter / 2 + tube_wall_thickness - 0.1, 0, 0.1])
          cylinder(h = 0.1, d = 0.1, center = true);
      }
    }
}

module proximity_sensor_mount_engraved () {
  // Top
  translate([0, 0, sensor_mount_height - mount_size / 2])
    cylinder(h = mount_size, d = tube_hole_diameter + 2 * tube_wall_thickness + 2 * drop_connector_gap, center = true);
  
  // Middle
  translate([0, 0, sensor_mount_height - mount_size - mount_size / 2])
    cylinder(h = mount_size, d1 = tube_hole_diameter + 0 * tube_wall_thickness + 2 * drop_connector_gap, d2 = tube_hole_diameter + 2 * tube_wall_thickness + 2 * drop_connector_gap, center = true);
  
  // Bottom
  translate([0, 0, sensor_mount_height / 2 - mount_size / 2])
    cylinder(h = sensor_mount_height, d = tube_hole_diameter + 2 * drop_connector_gap, center = true);  
  
  rotate([0, 0, 90])
    translate([0, 0, sensor_mount_height - mount_size / 2])
      cube([tube_hole_diameter + 4 * tube_wall_thickness + 20, tube_wall_thickness + drop_connector_gap, mount_size], center = true);

  zlist = sensor_low_mounts ? [mount_size / 2, sensor_mount_height - mount_size / 2] : [sensor_mount_height - mount_size / 2];

  for (z = zlist) {
    for (y = [-tube_diameter + mount_size / 2, tube_diameter - mount_size / 2]) {
      translate([6, y, z])
        rotate([0, 90, 0])
          m4_bolt_hole();
      translate([-5, y, z])
        rotate([0, 90, 0])
          m4_nut_hole();
    }
  }

  rotate([0, 0, sensor_angle])
    union () {
      // Main part of the sensor holder
      translate([(tube_hole_diameter + 4 * tube_wall_thickness) / 2  + sensor_housing_length / 2, 0, sensor_mount_height - 2 * mount_size - sensor_housing_diameter /2])
        rotate([0, 90, 0])
          cylinder(h = sensor_housing_length + 2 * drop_connector_gap, d = sensor_diameter, center = true);
      
      // Connection to the drop_funnel
        translate([(tube_hole_diameter + 4 * tube_wall_thickness) / 2  + sensor_housing_length / 2 + ( sensor_housing_length + 2 * drop_connector_gap) / 2 + tube_wall_thickness - (sensor_housing_length + 2 * drop_connector_gap) - 2 * tube_wall_thickness - tube_hole_diameter / 4, 0, sensor_mount_height - 2 * mount_size - sensor_housing_diameter /2])
          rotate([0, 90, 0])
            cylinder(h = 2 * tube_wall_thickness + tube_hole_diameter / 2, d2 = sensor_diameter, d1 = tube_hole_diameter, center = true);
        translate([tube_hole_diameter + sensor_hex_offset, 0, sensor_mount_height - 2 * mount_size - sensor_housing_diameter /2])
          rotate([0, 90, 0])
            union () {
              hexagon(d = sensor_hex_diameter, h = sensor_hex_height);
              translate([-sensor_hex_diameter / 2, 0, 0])
                cube([sensor_hex_diameter / 2, sensor_hex_diameter * sin(60), sensor_hex_height], center = true);
            }
    }
}

// DROP FUNNEL

module drop_funnel_mount_embossed () {
  translate([0, 0, drop_funnel_mount_height / 2])
    hull () {
      cylinder(h = drop_funnel_mount_height, d = tube_hole_diameter + 2 * tube_wall_thickness, center = true);
      translate([drop_funnel_magnet_offset, 0, 0])
        cylinder(h = drop_funnel_mount_height, d = cf_magnet_diameter + cf_magnet_bottom_ext + 2 * cf_magnet_cover_radius, center = true);
      translate([- drop_funnel_magnet_offset, 0, 0])
        cylinder(h = drop_funnel_mount_height, d = cf_magnet_diameter + cf_magnet_bottom_ext + 2 * cf_magnet_cover_radius, center = true);
    }
}

module drop_funnel_mount_engraved () {
  translate([0, 0, drop_funnel_mount_height / 2])
    union () {
      cylinder(h = drop_funnel_mount_height, d = tube_hole_diameter, center = true);
      for (x = [ - drop_funnel_magnet_offset, drop_funnel_magnet_offset]) {
        translate([x, 0, - drop_funnel_mount_height/2 + (cf_magnet_height + cf_magnet_bottom_height_ext) / 2])
          cylinder(h = cf_magnet_height + cf_magnet_bottom_height_ext, d = cf_magnet_diameter + cf_magnet_bottom_ext, center = true);
      }
    }
}

module drop_funnel_embossed (width, length, cal) {
  rotate([180, 0, 0])
    drop_funnel_mount();
  
  translate([0, 0, -drop_funnel_mount_height - (tube_hole_diameter - width) / 2])
    cylinder(h = tube_hole_diameter - width, d2 = tube_hole_diameter + 2 * tube_wall_thickness, d1 = width + 2 * tube_wall_thickness, center = true);

  tube_length = drop_total_length - length;
  
  translate([0, 0, -drop_funnel_mount_height - (tube_hole_diameter - width) - tube_length /2])
    cylinder(h = tube_length, d = width + 2 * tube_wall_thickness, center = true);
  
  // Side magnet
  hull () {
    translate([- (tube_hole_diameter + 2 * tube_wall_thickness) / 2 - (cf_magnet_height + cf_magnet_bottom_height_ext + 2 * cf_magnet_cover_radius)/2, 0, -drop_funnel_mount_height - drop_funnel_side_magnet_height])
      rotate([90, 0, 90])
        cylinder(h = cf_magnet_height + cf_magnet_bottom_height_ext + 2 * cf_magnet_cover_radius, d = cf_magnet_diameter + cf_magnet_bottom_ext + 2 * cf_magnet_cover_radius, center = true);
      
    translate([0, 0, -drop_funnel_mount_height - drop_funnel_side_magnet_height +(cf_magnet_height + cf_magnet_bottom_height_ext + 2 * cf_magnet_cover_radius + tube_hole_diameter + 2 * tube_wall_thickness)/4])
      cylinder(h = (cf_magnet_height + cf_magnet_bottom_height_ext + 2 * cf_magnet_cover_radius + tube_hole_diameter + 2 * tube_wall_thickness), d = width + 2 * tube_wall_thickness, center = true);
    }
  
  // Label
  translate([0, 0, -drop_funnel_mount_height - drop_funnel_label_length/2])
    hull () {
      translate([drop_funnel_label_height/2 + width / 4, 0, 0])
        cube([drop_funnel_label_height + width / 2, drop_funnel_label_width, drop_funnel_label_length], center = true);
      cylinder(h = drop_funnel_label_length, d = width + 2 * tube_wall_thickness, center = true);
      translate([0, 0, -drop_funnel_label_length / 2 - drop_funnel_label_height * 2])
        cylinder(h = drop_funnel_label_depth, d = width + 2 * tube_wall_thickness, center = true);
    };
}

module drop_funnel_engraved (width, length, cal) {
  translate([0, 0, -drop_funnel_mount_height - (tube_hole_diameter - width) / 2])
    cylinder(h = tube_hole_diameter - width, d2 = tube_hole_diameter, d1 = width, center = true);
  
  tube_length = drop_total_length - length;
  
  translate([0, 0, -drop_funnel_mount_height - (tube_hole_diameter - width) - tube_length /2])
    cylinder(h = tube_length, d = width, center = true);

  translate([- (tube_hole_diameter + 2 * tube_wall_thickness) / 2 - (cf_magnet_height + cf_magnet_bottom_height_ext + 2 * cf_magnet_cover_radius)/2 - cf_magnet_cover_radius, 0, -drop_funnel_mount_height - drop_funnel_side_magnet_height])
      rotate([90, 0, 90])
        cylinder(h = cf_magnet_height + cf_magnet_bottom_height_ext, d = cf_magnet_diameter + cf_magnet_bottom_ext, center = true);

  translate([width / 2 + drop_funnel_label_height-drop_funnel_label_depth, 0, -drop_funnel_mount_height - drop_funnel_label_length/2 - (tube_hole_diameter - width)])
    resize([drop_funnel_label_depth, drop_funnel_label_width - 2 * drop_funnel_label_depth, drop_funnel_label_length - 8 * drop_funnel_label_depth - (tube_hole_diameter - width)])
      rotate([0, 90, 0])
        linear_extrude(drop_funnel_label_depth)
          text(cal, size = 8, halign = "center", valign = "center", font = "Anton");
}

// NEMA INSERT

module nema_insert_embossed () {
  translate([0, 0, (nema_insert_height + nema_insert_extra_height)/ 2])
    cylinder(h = nema_insert_height + nema_insert_extra_height, d = nema_insert_outside_diameter, center = true);
}

module nema_insert_engraved () {
  translate([0, 0, (nema_insert_height + nema_insert_extra_height)/ 2])
    cylinder(h = nema_insert_height + nema_insert_extra_height, d = nema_insert_inside_diameter, center = true);
  translate([0, 0, nema_insert_hole_height + nema_insert_extra_height + nema_hole_diameter / 2])
    rotate([90, 0, 90])
      cylinder(h = nema_insert_outside_diameter, d = nema_hole_diameter, center = true);
  translate([0, 0, nema_insert_hole_height + nema_hole_diameter + nema_insert_height /2  + nema_insert_extra_height])
    cube([nema_insert_outside_diameter, nema_hole_diameter, nema_insert_height + nema_insert_extra_height], center = true);
}

module nema_insert () {
  difference () {
    nema_insert_embossed();
    nema_insert_engraved();
  }
}

module collator_drop_plate () {
  difference () {
    collator_drop_plate_embossed();
    collator_drop_plate_engraved();
  }
}

module collator_drop_tube () {
  difference () {
    collator_drop_tube_embossed();
    collator_drop_tube_engraved();
  }
}

module proximity_sensor_mount () {
  difference () {
    proximity_sensor_mount_embossed();
    proximity_sensor_mount_engraved();
  }
}

module drop_funnel_mount () {
  difference () {
    drop_funnel_mount_embossed();
    drop_funnel_mount_engraved();
  }
}

module drop_funnel (cal) {
  data = caliber_data(cal);
  width = data[0];
  length = data[1];

  rotate([0, 0, 270])
    difference () {
      drop_funnel_embossed(width, length, cal);
      drop_funnel_engraved(width, length, cal);
    }
}

module tube_mount (z = 15) {
  for (y = [-tube_diameter + 5, tube_diameter - 5]) {
    translate([0, y, z])
        difference () {
          cube([tube_wall_thickness, 10, 10], center = true);
          translate([5, 0, 0])
            rotate([0, 90, 0])
              m4_bolt_hole();
        };
  }
  translate([tube_wall_thickness / 2, -tube_diameter, z - 5])
    rotate([0, 180, 0])
      prism(tube_wall_thickness, 10, 10);
  translate([-tube_wall_thickness / 2, tube_diameter, z - 5])
    rotate([0, 180, 180])
      prism(tube_wall_thickness, 10, 10);
}

module collator_sensor_mount () {
  translate([0, 0, drop_funnel_mount_height])
    union () {
      proximity_sensor_mount();
      translate([0, 0, - drop_funnel_mount_height])
        drop_funnel_mount();
    }
}

// SERVO ARM

module servo_arm_embossed () {
  translate([0, 0, servo_arm_thickness / 2])
    hull () {
      cylinder(h = servo_arm_thickness, d = servo_width, center = true);
      translate([servo_arm_length, 0, 0])
        cylinder(h = servo_arm_thickness, d = cf_drop_diameter, center = true);
    };
    
  translate([0, 0, servo_arm_thickness + servo_hole_height / 2])
    cylinder(h = servo_hole_height, d = servo_hole_width + servo_arm_thickness, center = true);
}

module servo_arm_engraved () {
  // bolt hole
  cylinder(h = 4 * servo_arm_thickness, d = m2_5_diameter, center = true);
    
  // servo mount
  translate([0, 0, servo_arm_thickness + servo_hole_height/2])
    cylinder(h = servo_hole_height, d = servo_hole_width, center = true);
}

// ASSEMBLY FUNCTIONS

module top_wall () {
  difference () {
    top_wall_embossed();
    top_wall_engraved();
  }
}

module bottom_wall () {
  difference () {
    bottom_wall_embossed();
    bottom_wall_engraved();
  }
}

module left_wall () {
  difference () {
    left_wall_embossed();
    left_wall_engraved();
  }
}

module right_wall () {
  difference () {
    right_wall_embossed();
    right_wall_engraved();
  }
}

module front_wall_embossed () {
  // Used to generate other walls, not to print
  front_wall_left_embossed();
  front_wall_center_embossed();
  front_wall_right_embossed();
}

module front_wall_left () {
  difference () {
    front_wall_left_embossed();
    front_wall_left_engraved();
  }
}

module front_wall_center () {
  difference () {
    front_wall_center_embossed();
    front_wall_center_engraved();
  }
}

module front_wall_right () {
  difference () {
    front_wall_right_embossed();
    front_wall_right_engraved();
  }
}

module rear_wall () {
  difference () {
    rear_wall_embossed();
    rear_wall_engraved();
  }
}

module zvs_mount () {
  difference () {
    zvs_mount_embossed();
    zvs_mount_engraved();
  }
}

module servo_holder () {
  difference () {
    servo_holder_embossed();
    servo_holder_engraved();
  }
}

module case_feeder_body () {
  difference () {
    case_feeder_body_embossed();
    case_feeder_body_engraved();
  }
}

module case_feeder_slide (){
  difference () {
    case_feeder_slide_embossed ();
    case_feeder_slide_engraved ();
  }
}

module case_feeder_drop (){
  difference () {
    case_feeder_drop_embossed ();
    case_feeder_drop_engraved ();
  }
}

module case_feeder_insert (width, height = cf_insert_height, name = "") {
  translate([0, 0, cf_base_height])
    difference () {
      case_feeder_insert_embossed(width, cf_insert_diameter, height);
      case_feeder_insert_engraved(width, height, name);
    }
}

module case_feeder_base (width = cf_drop_diameter) {
  difference () {
    case_feeder_base_embossed(width, cf_base_diameter, cf_base_height, cf_base_slope);
    case_feeder_base_engraved(width);
  }
}

module case_feeder_insert_for_caliber ( caliber ) {
  width_data = caliber_data(caliber);
  case_feeder_insert(width_data[0], width_data[1], caliber);
}

module case_feeder_base_reinforcement ( width = cf_drop_diameter) {
  intersection () {
    case_feeder_base(width);
    cylinder(h = width * 2, d = m4_head_diameter, center = true);
  }
}

module case_holder_top () {
  difference () {
    case_holder_top_embossed();
    case_holder_top_engraved();
  }
}

module case_holder_insert ( caliber ) {
  width_data = caliber_data(caliber);
 
  case_height = width_data[1] - ch_case_difference - width_data[2];
  
  calc_height = case_height <= ch_height_discard ? 0 : case_height > ch_height_minimum ? case_height: ch_height_minimum;
  translate([cf_center_x, cf_center_y, ch_top_z - ch_top_thickness])
    difference () {
      case_holder_insert_embossed(width_data[0], calc_height, caliber);
      case_holder_insert_engraved(width_data[0], calc_height, caliber);
    }
}

module collator_angled_mount () {
  difference () {
    collator_angled_mount_embossed();
    collator_angled_mount_engraved();
  }
}

module coil_insert () {
  difference () {
    coil_insert_embossed();
    coil_insert_engraved();
  }
}

module collator_mount () {
  difference () {
    collator_mount_embossed();
    collator_mount_engraved();
  }
}

module collator_mount_top () {
  difference () {
    collator_mount_top_embossed();
    collator_mount_top_engraved();
  }
}

module collator_angled_mount () {
  difference () {
    collator_angled_mount_embossed();
    collator_angled_mount_engraved();
  }
}

module power_connector () {
  difference () {
    power_connector_embossed();
    power_connector_engraved();
  }
}

module zvs_sensor () {
  difference () {
    zvs_sensor_embossed();
    zvs_sensor_engraved();
  }
}

module servo_arm () {
  difference () {
    servo_arm_embossed();
    servo_arm_engraved();
  }
}

module power_cover () {
  difference () {
    power_cover_embossed();
    power_cover_engraved();
  }
}

// MISCELLANEOUS PARTS

module vent_hole () {
  translate([case_thickness / 2, case_y - case_thickness -power_vent_y - ab_depth, case_thickness + power_vent_z])
    rotate([0, 90, 0])
      difference () {
        cylinder(h = case_thickness * 2, d = power_vent_diameter, center = true);
        union () {
          cylinder(h = case_thickness * 2, d = power_vent_inside_diameter, center = true);
          rotate([90, 0, 0])
            cube([power_vent_mount_width, case_thickness * 2, power_vent_diameter], center = true);
                    
        }
      }
}

module pump_holder () {
  cube([pump_width, pump_depth, pump_holder_height]);
  translate([pump_width - pump_holder_slope_x, 0, 0])
    rotate([0, 180, 270])
      prism(pump_depth, pump_holder_slope_x, pump_holder_slope_z);
  translate([0, pump_depth / 4, 0])
    rotate([0, 180, 270])
      prism(pump_depth /2 , pump_width, pump_width / 4);
}

module pump_holder_holes () {
  for (x = [pump_x1, pump_x2]) {
    for (y = [pump_y1, pump_y2]) {
      translate([pump_width - x - pump_x_offset, pump_depth - y, 0])
      union () {
        m3_bolt_hole();
        translate([0, 0, pump_holder_height * 0.75])
          rotate([0, 0, 30])
            m3_nut_hole();
      }
    }
  }
}

// HELPERS

module hexagon (d = 0, h = 0) {
  cylinder(d = d, h = h, $fn=6, center = true);
} 

module m2_nut_hole (h = m2_nut_height) {
  translate([0, 0, 0])
    hexagon(d = m2_nut_diameter, h = h);
}

module m3_nut_hole (h = m3_nut_height) {
  translate([0, 0, 0])
    hexagon(d = m3_nut_diameter, h = h);
}

module m3_nut_drop (length = m3_nut_diameter / 2) {
  rotate([0, 0, 270])
    translate([0, length / 2, 0])
      cube([m3_nut_diameter * cos(30), length, m3_nut_height],center = true);
}

module m4_nut_hole (h = m4_nut_height) {
  translate([0, 0, 0])
    hexagon(d = m4_nut_diameter, h = h);
}

module m4_nut_drop (length = m4_nut_diameter / 2) {
  rotate([0, 0, 270])
    translate([0, length / 2, 0])
      cube([m4_nut_diameter * cos(30), length, m4_nut_height],center = true);
}

module m3_hole_and_drop (length = m3_nut_diameter / 2) {
  m3_nut_hole();
  m3_nut_drop(length);
}

module m4_hole_and_drop (length = m4_nut_diameter / 2) {
  m4_nut_hole();
  m4_nut_drop(length);
}

module assembly_block () {
  difference () {
    assembly_block_embossed();
    assembly_block_engraved();
  }
}

module single_assembly_block_embossed () {
  cube([ab_width, ab_depth, ab_height], center = true);
}

module single_assembly_block_engraved () {
  rotate([0, 270, 90])
    union () {
      m4_hole_and_drop(ab_height);
      cylinder(h = ab_depth * 4, d = m4_diameter, center = true);
      translate([0, 0, ab_width - m4_head_height / 2])
        cylinder(h = m4_head_height, d = m4_head_diameter, center = true); 
    }
}

module assembly_block_embossed () {
  cube([ab_width, ab_depth, ab_height * 2]);
  translate([ab_width, 0, 0])
    cube([ab_width, ab_depth, ab_height]);
}

module assembly_block_engraved () {
  translate([ab_depth / 2, ab_depth / 2, ab_height * 1.5])
    rotate([180, 270, 0])
      union () {
        m4_hole_and_drop(ab_height);
        m4_assembly_block_hole();
      }

  translate([ab_depth * 1.5, ab_depth / 2, ab_height / 2])
    rotate([180, 270, 90])
      union () {
        m4_hole_and_drop(ab_height);
        m4_assembly_block_hole();
      }
}

module front_assembly_blocks_embossed () {
  translate([front_wall_part_width - ab_width / 2, case_thickness + ab_depth /2 , ab_height / 2 + case_thickness])
    single_assembly_block_embossed();
  translate([front_wall_part_width + ab_width / 2, case_thickness + ab_depth /2 , ab_height / 2 + case_thickness])
    single_assembly_block_embossed();
  translate([case_x - front_wall_part_width - ab_width / 2, case_thickness + ab_depth /2 , ab_height / 2 + case_thickness])
    single_assembly_block_embossed();
  translate([case_x - front_wall_part_width + ab_width / 2, case_thickness + ab_depth /2 , ab_height / 2 + case_thickness])
    single_assembly_block_embossed();
}

module front_assembly_blocks_engraved (rotate_angle = 0) {
  translate([front_wall_part_width - ab_width / 2, case_thickness + ab_depth /2 , ab_height / 2 + case_thickness])
    rotate([0, rotate_angle, 0])
      single_assembly_block_engraved();
  translate([front_wall_part_width + ab_width / 2, case_thickness + ab_depth /2 , ab_height / 2 + case_thickness])
    rotate([0, rotate_angle, 0])
      single_assembly_block_engraved();
  translate([case_x - front_wall_part_width - ab_width / 2, case_thickness + ab_depth /2 , ab_height / 2 + case_thickness])
    rotate([0, rotate_angle, 0])
      single_assembly_block_engraved();
  translate([case_x - front_wall_part_width + ab_width / 2, case_thickness + ab_depth /2 , ab_height / 2 + case_thickness])
    rotate([0, rotate_angle, 0])
      single_assembly_block_engraved();
}

module bottom_assembly_blocks () {
  for (y = [case_thickness, case_y - case_thickness - ab_depth]) {
    // left
    translate([case_thickness, y, case_thickness])
      assembly_block();
    // right
    translate([case_x - case_thickness, y + ab_depth, case_thickness])
      rotate([0, 0, 180])
        assembly_block();
  }
}
module left_assembly_blocks () {
  // front left
  translate([case_thickness, case_thickness, case_z - case_thickness])
    rotate([180, 90, 180])
      assembly_block();
  // rear left
  translate([case_thickness, case_y - case_thickness - ab_depth, case_z - case_thickness])
    rotate([180, 90, 180])
      assembly_block();
}

module right_assembly_blocks () {
  // front right
  translate([case_x - case_thickness, case_thickness + ab_width, case_z - case_thickness])
    rotate([180, 90, 0])
      assembly_block();
  // rear left
  translate([case_x - case_thickness, case_y - case_thickness, case_z - case_thickness])
    rotate([180, 90, 0])
      assembly_block();    
}

module assembly_blocks_engraved () {
  for (y = [case_thickness, case_y - case_thickness - ab_depth]) {
    // left
    translate([case_thickness, y, case_thickness])
      assembly_block_engraved();
    // right
    translate([case_x - case_thickness, y + ab_depth, case_thickness])
      rotate([0, 0, 180])
        assembly_block_engraved();
  }

  for ( y = [case_thickness, case_y - case_thickness - ab_depth]) {
    // left
    translate([case_thickness, y, case_z - case_thickness])
      rotate([180, 90, 180])
        assembly_block_engraved();
    // right
    translate([case_x - case_thickness, y + ab_width, case_z - case_thickness])
      rotate([180, 90, 0])
        assembly_block_engraved();
  }
}

module m4_assembly_block_hole () {
  cylinder(h = ab_depth * 4, d = m4_diameter, center = true);
  translate([0, 0, m4_head_height / 2 - ab_width])
    cylinder(h = m4_head_height, d = m4_head_diameter, center = true);
  translate([0, 0, ab_width - m4_head_height / 2])
    cylinder(h = m4_head_height, d = m4_head_diameter, center = true); 
}

module m4_assembly_block_hole_slim () {
  translate([0, 0, ab_depth])
    cylinder(h = ab_depth * 3, d = m4_diameter, center = true);
  translate([0, 0, ab_width - m4_head_height / 2])
    cylinder(h = m4_head_height, d = m4_head_diameter, center = true); 
}

module m2_bolt_hole() {
  cylinder(h = 2 * m2_length, d = m2_diameter, center = true);

  // bolt holes for M2
  translate([0, 0, - m2_head_height / 2])
    cylinder(h = m2_head_height, d = m2_head_diameter, center = true);
}

module m3_bolt_hole() {
  cylinder(h = 2 * m3_length, d = m3_diameter, center = true);

  // bolt holes for M3
  translate([0, 0, - m3_head_height / 2])
    cylinder(h = m3_head_height, d = m3_head_diameter, center = true);
}

module m4_hole(length = 2 * m4_length) {
  cylinder(h = length, d = m4_diameter, center = true);
}

module m4_bolt_hole() {
  cylinder(h = 2 * m4_length, d = m4_diameter, center = true);

  // bolt holes for M4
  translate([0, 0, - m4_head_height / 2])
    cylinder(h = m4_head_height, d = m4_head_diameter, center = true);
}

 module prism(l, w, h) {
  polyhedron(
    points = [[0,0,0], [l,0,0], [l,w,0], [0,w,0], [0,w,h], [l,w,h]],
    faces = [[0,1,2,3],[5,4,3,2],[0,4,5,1],[0,3,4],[5,2,1]]
  );
}

module case_edge_engraved () {
  difference () {
    cube([case_x, case_y, case_z]);
    case_edge_solid();
  }
}
 
module case_edge_solid () {
  // bottom front
  translate([case_x / 2, case_edge_radius, case_edge_radius])
    rotate([0, 90, 0])
      cylinder(r = case_edge_radius, h = case_x - 2 * case_edge_radius, center = true);
  // bottom rear
  translate([case_x / 2, case_y - case_edge_radius, case_edge_radius])
    rotate([0, 90, 0])
      cylinder(r = case_edge_radius, h = case_x - 2 * case_edge_radius, center = true);
  // bottom left
  translate([case_edge_radius, case_y / 2, case_edge_radius])
    rotate([90, 0, 0])
      cylinder(r = case_edge_radius, h = case_y - 2 * case_edge_radius, center = true);
  // bottom right
  translate([case_x - case_edge_radius, case_y / 2, case_edge_radius])
    rotate([90, 0, 0])
      cylinder(r = case_edge_radius, h = case_y - 2 * case_edge_radius, center = true);

  // top front
  translate([case_x / 2, case_edge_radius, case_z - case_edge_radius])
    rotate([0, 90, 0])
      cylinder(r = case_edge_radius, h = case_x - 2 * case_edge_radius, center = true);
  // top rear
  translate([case_x / 2, case_y - case_edge_radius, case_z - case_edge_radius])
    rotate([0, 90, 0])
      cylinder(r = case_edge_radius, h = case_x - 2 * case_edge_radius, center = true);
  // top left
  translate([case_edge_radius, case_y / 2, case_z - case_edge_radius])
    rotate([90, 0, 0])
      cylinder(r = case_edge_radius, h = case_y - 2 * case_edge_radius, center = true);
  // top right
  translate([case_x - case_edge_radius, case_y / 2, case_z - case_edge_radius])
    rotate([90, 0, 0])
      cylinder(r = case_edge_radius, h = case_y - 2 * case_edge_radius, center = true);

  // front left
  translate([case_edge_radius, case_edge_radius, case_z / 2])
    cylinder(r = case_edge_radius, h = case_z - 2 * case_edge_radius, center = true);
  // front right
  translate([case_x - case_edge_radius, case_edge_radius, case_z / 2])
    cylinder(r = case_edge_radius, h = case_z - 2 * case_edge_radius, center = true);
  // rear left
  translate([case_edge_radius, case_y - case_edge_radius, case_z / 2])
    cylinder(r = case_edge_radius, h = case_z - 2 * case_edge_radius, center = true);
  // rear right
  translate([case_x - case_edge_radius, case_y - case_edge_radius, case_z / 2])
    cylinder(r = case_edge_radius, h = case_z - 2 * case_edge_radius, center = true);

  // inside
  translate([case_edge_radius, case_edge_radius, case_edge_radius])
    cube([case_x - case_edge_radius * 2, case_y - case_edge_radius * 2, case_z - case_edge_radius * 2]);
  // front/rear
  translate([case_edge_radius, 0, case_edge_radius])
    cube([case_x - 2 * case_edge_radius, case_y, case_z - 2 * case_edge_radius]);
  // left/right
  translate([0, case_edge_radius, case_edge_radius])
    cube([case_x, case_y - 2 * case_edge_radius, case_z - 2 * case_edge_radius]);
  // top/bottom
  translate([case_edge_radius, case_edge_radius, 0])
    cube([case_x - 2 * case_edge_radius, case_y - 2 * case_edge_radius, case_z]);

  // corners
  for (x = [case_edge_radius, case_x - case_edge_radius]) {
    for (y = [case_edge_radius, case_y - case_edge_radius]) {
      for (z = [case_edge_radius, case_z - case_edge_radius]) {
        translate([x, y, z])
          sphere(r = case_edge_radius);
      }
    }
  }
}

// VISUAL CUES
// Not used in actual generation with the sole exception of rear fan

module vq_power_48v () {
  color("green")
    translate([case_thickness, case_y - case_thickness - power_depth - ab_depth, case_thickness])
      cube([power_width, power_depth, power_height]);
}

module vq_power_12v (){
  color("lightgreen")
    translate([case_thickness + power_width, case_y - case_thickness - power_depth + (power_depth - power12_depth)/2, case_thickness + power12_offset_z])
      cube([power12_width, power12_depth, power12_height]);
}

module vq_control_board () {
  color("red")
    translate([case_thickness + power_width + board_x_offset - board_margin, case_y - case_thickness - board_y_offset - board_y - board_margin, case_thickness + board_z])
      cube([board_x1 + board_x2 + 2 * board_margin, board_y + 2 * board_margin, board_height]);
}

module vq_relay () {
  color("yellow")
    translate([case_thickness + relay_x_offset, case_y - case_thickness -relay_height, case_thickness + relay_z_offset])
      cube([relay_width, relay_height, relay_depth]);
}

module vq_radiator () {
  color("lightblue")
    translate([case_x - case_thickness - radiator_depth, case_thickness + radiator_y_offset, radiator_z_offset])
      cube([radiator_depth, radiator_width, radiator_height]);
}

module vq_pump () {
  color("blue")
    translate([case_x - case_thickness - pump_width, case_y - case_thickness - pump_depth - ab_depth, case_z - case_thickness - pump_height])
      cube([pump_width, pump_depth, pump_height]);
}

module vq_fan () {
  color("gray")
    translate([case_thickness + fan_x_offset, case_y - case_thickness - fan_depth, case_z - case_thickness - fan_height - ab_height])
      cube([fan_width, fan_depth, fan_height]);
}

module vq_zvs () {
  color("cyan")
    translate([case_thickness + zvs_x_offset, case_thickness, case_z - case_thickness - zvs_z - zvs_width])
      cube([zvs_height, zvs_depth, zvs_width]);
}

module vq_coil () {
  color("red")
    translate([cf_center_x, - cf_nema_offset_y - cf_nema_mount_offset / 2 - cf_insert_diameter / 2 + coil_diameter / 4, coil_z + coil_height / 2])
      cylinder(h = coil_height, d = coil_diameter, center = true);
}

module vq_driver () {
  color("green")
    translate([cf_center_x, - cf_nema_offset_y - cf_nema_mount_offset / 2,  case_z - cf_nema_width / 2])
      cube([cf_nema_width, cf_nema_width, cf_nema_height], center = true);
}

module vq () {
  vq_power_48v();
  vq_power_12v();
  vq_control_board();
  vq_relay();
  vq_radiator();
  vq_pump();
  vq_fan();
  vq_zvs();
  vq_coil();
  vq_driver();
}


// PRINT-ORIENTED PARTS
// Used for automatic generation of STL files
// Naming convention:
//   module print_XXX () { // name: ZZZ.stl

// Case walls
module print_top_wall () { // name: CaseTop.stl
  rotate([180, 0, 90])
    top_wall();
}

module print_bottom_wall () { // name: CaseBottom.stl
  rotate([0, 0, 90])
    bottom_wall();
}

module print_left_wall () { // name: CaseLeft.stl
  rotate([0, -90, 90])
    left_wall();
}

module print_right_wall () { // name: CaseRight.stl
  rotate([0, 90, 90])
    right_wall();
}

module print_rear_wall () { // name: CaseRear.stl
  rotate([-90, 0, 0])
    rear_wall();
}

module print_front_wall_left () { // name: CaseFrontLeft.stl
  rotate([-90, 0, 0])
    front_wall_left();
}

module print_front_wall_center () { // name: CaseFrontCenter.stl
  rotate([-90, 0, 0])
    front_wall_center();
}

module print_front_wall_right () { // name: CaseFrontRight.stl
  rotate([-90, 0, 0])
    front_wall_right();
}

module print_zvs_mount () { // name: ZVSMount.stl
  rotate([0, 90, 0])
    zvs_mount();
}

module print_servo_holder () { // name: ServoHolder.stl
  servo_holder();
}

module print_servo_arm () { // name: ServoArm.stl
  servo_arm();
}

module print_case_feeder_body () { // name: FeederBody.stl
  case_feeder_body();
}

module print_case_feeder_slide () { // name: FeederSlide.stl
  rotate([180, 0, 0])
    case_feeder_slide();
}

module print_case_feeder_drop () { // name: FeederDrop.stl
  rotate([180, 0, 0])
    case_feeder_drop();
}

module print_power_cover () { // name: PowerCover.stl
  power_cover();
}

module print_power_connector () { // name: PowerConnector.stl
  power_connector();
}

module print_zvs_sensor () { // name: ZVSSensor.stl
  zvs_sensor();
}

module print_case_feeder_base () { // name: FeederBase.stl
  case_feeder_base();
}

module print_case_feeder_base_reinforcement () { // name: FeederBaseReinforcement.stl
  case_feeder_base_reinforcement();
}

module print_collator_drop () { // name: CollatorPlate.stl
  collator_drop();
}

module print_collator_sensor_mount() { // name: CollatorSensor.stl
  collator_sensor_mount();
}

module print_coil_insert() { // name: CoilInsert.stl
  coil_insert();
}

module print_nema_insert () { // name: MotorInsert.stl
  nema_insert();
}

module print_collator_mount_top () { // name: CollatorMountTop.stl
  collator_mount_top();
}

module print_collator_mount_bottom () { // name: CollatorMountBottom.stl
  collator_mount();
}

module print_case_feeder_insert_for_caliber ( cal ) { // name: FeederInsert-%s.stl
  case_feeder_insert_for_caliber(cal);
}

module print_case_holder_insert_for_caliber ( cal ) { // name: HolderInsert-%s.stl
  case_holder_insert(cal);
}

module print_drop_funnel_for_caliber ( cal ) { // name: Funnel-%s.stl
  rotate([180, 0, 0])
    drop_funnel(cal);
}
