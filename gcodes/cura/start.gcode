; --- Cura START Gcode for Ender 3 v2 Neo ---

; An up-to-date version of the tjjfvi's original script can be found
; here:  https://csi.t6.fyi/
; Note - This script will only work in Cura V4.2 and above!
; --- Global Settings
; acceleration_enabled = {acceleration_enabled}
; acceleration_infill = {acceleration_infill}
; acceleration_ironing = {acceleration_ironing}
; acceleration_layer_0 = {acceleration_layer_0}
; acceleration_prime_tower = {acceleration_prime_tower}
; acceleration_print = {acceleration_print}
; acceleration_print_layer_0 = {acceleration_print_layer_0}
; acceleration_roofing = {acceleration_roofing}
; acceleration_skirt_brim = {acceleration_skirt_brim}
; acceleration_support = {acceleration_support}
; acceleration_support_bottom = {acceleration_support_bottom}
; acceleration_support_infill = {acceleration_support_infill}
; acceleration_support_interface = {acceleration_support_interface}
; acceleration_support_roof = {acceleration_support_roof}
; acceleration_topbottom = {acceleration_topbottom}
; acceleration_travel = {acceleration_travel}
; acceleration_travel_enabled = {acceleration_travel_enabled}
; acceleration_travel_layer_0 = {acceleration_travel_layer_0}
; acceleration_wall = {acceleration_wall}
; acceleration_wall_0 = {acceleration_wall_0}
; acceleration_wall_x = {acceleration_wall_x}
; adaptive_layer_height_enabled = {adaptive_layer_height_enabled}
; adaptive_layer_height_threshold = {adaptive_layer_height_threshold}
; adaptive_layer_height_variation = {adaptive_layer_height_variation}
; adaptive_layer_height_variation_step = {adaptive_layer_height_variation_step}
; adhesion_extruder_nr = {adhesion_extruder_nr}
; adhesion_type = {adhesion_type}
; alternate_carve_order = {alternate_carve_order}
; alternate_extra_perimeter = {alternate_extra_perimeter}
; anti_overhang_mesh = {anti_overhang_mesh}
; bottom_layers = {bottom_layers}
; bottom_skin_expand_distance = {bottom_skin_expand_distance}
; bottom_skin_preshrink = {bottom_skin_preshrink}
; bottom_thickness = {bottom_thickness}
; bridge_enable_more_layers = {bridge_enable_more_layers}
; bridge_fan_speed = {bridge_fan_speed}
; bridge_fan_speed_2 = {bridge_fan_speed_2}
; bridge_fan_speed_3 = {bridge_fan_speed_3}
; bridge_settings_enabled = {bridge_settings_enabled}
; bridge_skin_density = {bridge_skin_density}
; bridge_skin_density_2 = {bridge_skin_density_2}
; bridge_skin_density_3 = {bridge_skin_density_3}
; bridge_skin_material_flow = {bridge_skin_material_flow}
; bridge_skin_material_flow_2 = {bridge_skin_material_flow_2}
; bridge_skin_material_flow_3 = {bridge_skin_material_flow_3}
; bridge_skin_speed = {bridge_skin_speed}
; bridge_skin_speed_2 = {bridge_skin_speed_2}
; bridge_skin_speed_3 = {bridge_skin_speed_3}
; bridge_skin_support_threshold = {bridge_skin_support_threshold}
; bridge_sparse_infill_max_density = {bridge_sparse_infill_max_density}
; bridge_wall_coast = {bridge_wall_coast}
; bridge_wall_material_flow = {bridge_wall_material_flow}
; bridge_wall_min_length = {bridge_wall_min_length}
; bridge_wall_speed = {bridge_wall_speed}
; brim_gap = {brim_gap}
; brim_inside_margin = {brim_inside_margin}
; brim_line_count = {brim_line_count}
; brim_outside_only = {brim_outside_only}
; brim_replaces_support = {brim_replaces_support}
; brim_width = {brim_width}
; build_volume_temperature = {build_volume_temperature}
; carve_multiple_volumes = {carve_multiple_volumes}
; center_object = {center_object}
; clean_between_layers = {clean_between_layers}
; coasting_enable = {coasting_enable}
; coasting_min_volume = {coasting_min_volume}
; coasting_speed = {coasting_speed}
; coasting_volume = {coasting_volume}
; conical_overhang_angle = {conical_overhang_angle}
; conical_overhang_enabled = {conical_overhang_enabled}
; conical_overhang_hole_size = {conical_overhang_hole_size}
; connect_infill_polygons = {connect_infill_polygons}
; connect_skin_polygons = {connect_skin_polygons}
; cool_fan_enabled = {cool_fan_enabled}
; cool_fan_full_at_height = {cool_fan_full_at_height}
; cool_fan_full_layer = {cool_fan_full_layer}
; cool_fan_speed = {cool_fan_speed}
; cool_fan_speed_0 = {cool_fan_speed_0}
; cool_fan_speed_max = {cool_fan_speed_max}
; cool_fan_speed_min = {cool_fan_speed_min}
; cool_lift_head = {cool_lift_head}
; cool_min_layer_time = {cool_min_layer_time}
; cool_min_layer_time_fan_speed_max = {cool_min_layer_time_fan_speed_max}
; cool_min_speed = {cool_min_speed}
; cool_min_temperature = {cool_min_temperature}
; cross_infill_density_image = {cross_infill_density_image}
; cross_infill_pocket_size = {cross_infill_pocket_size}
; cross_support_density_image = {cross_support_density_image}
; cutting_mesh = {cutting_mesh}
; default_material_bed_temperature = {default_material_bed_temperature}
; default_material_print_temperature = {default_material_print_temperature}
; draft_shield_dist = {draft_shield_dist}
; draft_shield_enabled = {draft_shield_enabled}
; draft_shield_height = {draft_shield_height}
; draft_shield_height_limitation = {draft_shield_height_limitation}
; expand_skins_expand_distance = {expand_skins_expand_distance}
; extruder_prime_pos_abs = {extruder_prime_pos_abs}
; extruder_prime_pos_x = {extruder_prime_pos_x}
; extruder_prime_pos_y = {extruder_prime_pos_y}
; extruder_prime_pos_z = {extruder_prime_pos_z}
; extruders_enabled_count = {extruders_enabled_count}
; fill_outline_gaps = {fill_outline_gaps}
; flow_rate_extrusion_offset_factor = {flow_rate_extrusion_offset_factor}
; flow_rate_max_extrusion_offset = {flow_rate_max_extrusion_offset}
; gantry_height = {gantry_height}
; gradual_infill_step_height = {gradual_infill_step_height}
; gradual_infill_steps = {gradual_infill_steps}
; gradual_support_infill_step_height = {gradual_support_infill_step_height}
; gradual_support_infill_steps = {gradual_support_infill_steps}
; hole_xy_offset = {hole_xy_offset}
; infill_angles = {infill_angles}
; infill_before_walls = {infill_before_walls}
; infill_enable_travel_optimization = {infill_enable_travel_optimization}
; infill_extruder_nr = {infill_extruder_nr}
; infill_line_distance = {infill_line_distance}
; infill_line_width = {infill_line_width}
; infill_material_flow = {infill_material_flow}
; infill_mesh = {infill_mesh}
; infill_mesh_order = {infill_mesh_order}
; infill_multiplier = {infill_multiplier}
; infill_offset_x = {infill_offset_x}
; infill_offset_y = {infill_offset_y}
; infill_overlap = {infill_overlap}
; infill_overlap_mm = {infill_overlap_mm}
; infill_pattern = {infill_pattern}
; infill_randomize_start_location = {infill_randomize_start_location}
; infill_sparse_density = {infill_sparse_density}
; infill_sparse_thickness = {infill_sparse_thickness}
; infill_support_angle = {infill_support_angle}
; infill_support_enabled = {infill_support_enabled}
; infill_wall_line_count = {infill_wall_line_count}
; infill_wipe_dist = {infill_wipe_dist}
; initial_bottom_layers = {initial_bottom_layers}
; initial_layer_line_width_factor = {initial_layer_line_width_factor}
; inset_direction = {inset_direction}
; interlocking_beam_layer_count = {interlocking_beam_layer_count}
; interlocking_beam_width = {interlocking_beam_width}
; interlocking_boundary_avoidance = {interlocking_boundary_avoidance}
; interlocking_depth = {interlocking_depth}
; interlocking_enable = {interlocking_enable}
; interlocking_orientation = {interlocking_orientation}
; ironing_enabled = {ironing_enabled}
; ironing_flow = {ironing_flow}
; ironing_inset = {ironing_inset}
; ironing_line_spacing = {ironing_line_spacing}
; ironing_monotonic = {ironing_monotonic}
; ironing_only_highest_layer = {ironing_only_highest_layer}
; ironing_pattern = {ironing_pattern}
; jerk_enabled = {jerk_enabled}
; jerk_infill = {jerk_infill}
; jerk_ironing = {jerk_ironing}
; jerk_layer_0 = {jerk_layer_0}
; jerk_prime_tower = {jerk_prime_tower}
; jerk_print = {jerk_print}
; jerk_print_layer_0 = {jerk_print_layer_0}
; jerk_roofing = {jerk_roofing}
; jerk_skirt_brim = {jerk_skirt_brim}
; jerk_support = {jerk_support}
; jerk_support_bottom = {jerk_support_bottom}
; jerk_support_infill = {jerk_support_infill}
; jerk_support_interface = {jerk_support_interface}
; jerk_support_roof = {jerk_support_roof}
; jerk_topbottom = {jerk_topbottom}
; jerk_travel = {jerk_travel}
; jerk_travel_enabled = {jerk_travel_enabled}
; jerk_travel_layer_0 = {jerk_travel_layer_0}
; jerk_wall = {jerk_wall}
; jerk_wall_0 = {jerk_wall_0}
; jerk_wall_x = {jerk_wall_x}
; layer_0_z_overlap = {layer_0_z_overlap}
; layer_height = {layer_height}
; layer_height_0 = {layer_height_0}
; layer_start_x = {layer_start_x}
; layer_start_y = {layer_start_y}
; lightning_infill_overhang_angle = {lightning_infill_overhang_angle}
; lightning_infill_prune_angle = {lightning_infill_prune_angle}
; lightning_infill_straightening_angle = {lightning_infill_straightening_angle}
; lightning_infill_support_angle = {lightning_infill_support_angle}
; limit_support_retractions = {limit_support_retractions}
; line_width = {line_width}
; machine_acceleration = {machine_acceleration}
; machine_always_write_active_tool = {machine_always_write_active_tool}
; machine_buildplate_type = {machine_buildplate_type}
; machine_center_is_zero = {machine_center_is_zero}
; machine_depth = {machine_depth}
; machine_disallowed_areas = {machine_disallowed_areas}
; machine_endstop_positive_direction_x = {machine_endstop_positive_direction_x}
; machine_endstop_positive_direction_y = {machine_endstop_positive_direction_y}
; machine_endstop_positive_direction_z = {machine_endstop_positive_direction_z}
; machine_extruder_count = {machine_extruder_count}
; machine_extruders_share_heater = {machine_extruders_share_heater}
; machine_extruders_share_nozzle = {machine_extruders_share_nozzle}
; machine_extruders_shared_nozzle_initial_retraction = {machine_extruders_shared_nozzle_initial_retraction}
; machine_feeder_wheel_diameter = {machine_feeder_wheel_diameter}
; machine_firmware_retract = {machine_firmware_retract}
; machine_gcode_flavor = {machine_gcode_flavor}
; machine_head_with_fans_polygon = {machine_head_with_fans_polygon}
; machine_heat_zone_length = {machine_heat_zone_length}
; machine_heated_bed = {machine_heated_bed}
; machine_heated_build_volume = {machine_heated_build_volume}
; machine_height = {machine_height}
; machine_max_acceleration_e = {machine_max_acceleration_e}
; machine_max_acceleration_x = {machine_max_acceleration_x}
; machine_max_acceleration_y = {machine_max_acceleration_y}
; machine_max_acceleration_z = {machine_max_acceleration_z}
; machine_max_feedrate_e = {machine_max_feedrate_e}
; machine_max_feedrate_x = {machine_max_feedrate_x}
; machine_max_feedrate_y = {machine_max_feedrate_y}
; machine_max_feedrate_z = {machine_max_feedrate_z}
; machine_max_jerk_e = {machine_max_jerk_e}
; machine_max_jerk_xy = {machine_max_jerk_xy}
; machine_max_jerk_z = {machine_max_jerk_z}
; machine_min_cool_heat_time_window = {machine_min_cool_heat_time_window}
; machine_minimum_feedrate = {machine_minimum_feedrate}
; machine_name = {machine_name}
; machine_nozzle_cool_down_speed = {machine_nozzle_cool_down_speed}
; machine_nozzle_expansion_angle = {machine_nozzle_expansion_angle}
; machine_nozzle_head_distance = {machine_nozzle_head_distance}
; machine_nozzle_heat_up_speed = {machine_nozzle_heat_up_speed}
; machine_nozzle_id = {machine_nozzle_id}
; machine_nozzle_size = {machine_nozzle_size}
; machine_nozzle_temp_enabled = {machine_nozzle_temp_enabled}
; machine_nozzle_tip_outer_diameter = {machine_nozzle_tip_outer_diameter}
; machine_scale_fan_speed_zero_to_one = {machine_scale_fan_speed_zero_to_one}
; machine_shape = {machine_shape}
; machine_show_variants = {machine_show_variants}
; machine_steps_per_mm_e = {machine_steps_per_mm_e}
; machine_steps_per_mm_x = {machine_steps_per_mm_x}
; machine_steps_per_mm_y = {machine_steps_per_mm_y}
; machine_steps_per_mm_z = {machine_steps_per_mm_z}
; machine_use_extruder_offset_to_offset_coords = {machine_use_extruder_offset_to_offset_coords}
; machine_width = {machine_width}
; magic_fuzzy_skin_enabled = {magic_fuzzy_skin_enabled}
; magic_fuzzy_skin_outside_only = {magic_fuzzy_skin_outside_only}
; magic_fuzzy_skin_point_density = {magic_fuzzy_skin_point_density}
; magic_fuzzy_skin_point_dist = {magic_fuzzy_skin_point_dist}
; magic_fuzzy_skin_thickness = {magic_fuzzy_skin_thickness}
; magic_mesh_surface_mode = {magic_mesh_surface_mode}
; magic_spiralize = {magic_spiralize}
; material_adhesion_tendency = {material_adhesion_tendency}
; material_alternate_walls = {material_alternate_walls}
; material_anti_ooze_retracted_position = {material_anti_ooze_retracted_position}
; material_anti_ooze_retraction_speed = {material_anti_ooze_retraction_speed}
; material_bed_temp_prepend = {material_bed_temp_prepend}
; material_bed_temp_wait = {material_bed_temp_wait}
; material_bed_temperature = {material_bed_temperature}
; material_bed_temperature_layer_0 = {material_bed_temperature_layer_0}
; material_break_preparation_retracted_position = {material_break_preparation_retracted_position}
; material_break_preparation_speed = {material_break_preparation_speed}
; material_break_preparation_temperature = {material_break_preparation_temperature}
; material_break_retracted_position = {material_break_retracted_position}
; material_break_speed = {material_break_speed}
; material_break_temperature = {material_break_temperature}
; material_crystallinity = {material_crystallinity}
; material_diameter = {material_diameter}
; material_end_of_filament_purge_length = {material_end_of_filament_purge_length}
; material_end_of_filament_purge_speed = {material_end_of_filament_purge_speed}
; material_extrusion_cool_down_speed = {material_extrusion_cool_down_speed}
; material_final_print_temperature = {material_final_print_temperature}
; material_flow = {material_flow}
; material_flow_dependent_temperature = {material_flow_dependent_temperature}
; material_flow_layer_0 = {material_flow_layer_0}
; material_flow_temp_graph = {material_flow_temp_graph}
; material_flush_purge_length = {material_flush_purge_length}
; material_flush_purge_speed = {material_flush_purge_speed}
; material_guid = {material_guid}
; material_initial_print_temperature = {material_initial_print_temperature}
; material_maximum_park_duration = {material_maximum_park_duration}
; material_no_load_move_factor = {material_no_load_move_factor}
; material_print_temp_prepend = {material_print_temp_prepend}
; material_print_temp_wait = {material_print_temp_wait}
; material_print_temperature = {material_print_temperature}
; material_print_temperature_layer_0 = {material_print_temperature_layer_0}
; material_shrinkage_percentage = {material_shrinkage_percentage}
; material_shrinkage_percentage_xy = {material_shrinkage_percentage_xy}
; material_shrinkage_percentage_z = {material_shrinkage_percentage_z}
; material_standby_temperature = {material_standby_temperature}
; material_surface_energy = {material_surface_energy}
; max_extrusion_before_wipe = {max_extrusion_before_wipe}
; max_skin_angle_for_expansion = {max_skin_angle_for_expansion}
; mesh_position_x = {mesh_position_x}
; mesh_position_y = {mesh_position_y}
; mesh_position_z = {mesh_position_z}
; mesh_rotation_matrix = {mesh_rotation_matrix}
; meshfix_extensive_stitching = {meshfix_extensive_stitching}
; meshfix_keep_open_polygons = {meshfix_keep_open_polygons}
; meshfix_maximum_deviation = {meshfix_maximum_deviation}
; meshfix_maximum_extrusion_area_deviation = {meshfix_maximum_extrusion_area_deviation}
; meshfix_maximum_resolution = {meshfix_maximum_resolution}
; meshfix_maximum_travel_resolution = {meshfix_maximum_travel_resolution}
; meshfix_union_all = {meshfix_union_all}
; meshfix_union_all_remove_holes = {meshfix_union_all_remove_holes}
; min_bead_width = {min_bead_width}
; min_even_wall_line_width = {min_even_wall_line_width}
; min_feature_size = {min_feature_size}
; min_infill_area = {min_infill_area}
; min_odd_wall_line_width = {min_odd_wall_line_width}
; min_skin_width_for_expansion = {min_skin_width_for_expansion}
; min_wall_line_width = {min_wall_line_width}
; minimum_bottom_area = {minimum_bottom_area}
; minimum_interface_area = {minimum_interface_area}
; minimum_polygon_circumference = {minimum_polygon_circumference}
; minimum_roof_area = {minimum_roof_area}
; minimum_support_area = {minimum_support_area}
; mold_angle = {mold_angle}
; mold_enabled = {mold_enabled}
; mold_roof_height = {mold_roof_height}
; mold_width = {mold_width}
; multiple_mesh_overlap = {multiple_mesh_overlap}
; nozzle_disallowed_areas = {nozzle_disallowed_areas}
; ooze_shield_angle = {ooze_shield_angle}
; ooze_shield_dist = {ooze_shield_dist}
; ooze_shield_enabled = {ooze_shield_enabled}
; optimize_wall_printing_order = {optimize_wall_printing_order}
; prime_blob_enable = {prime_blob_enable}
; prime_tower_brim_enable = {prime_tower_brim_enable}
; prime_tower_enable = {prime_tower_enable}
; prime_tower_flow = {prime_tower_flow}
; prime_tower_line_width = {prime_tower_line_width}
; prime_tower_min_volume = {prime_tower_min_volume}
; prime_tower_position_x = {prime_tower_position_x}
; prime_tower_position_y = {prime_tower_position_y}
; prime_tower_size = {prime_tower_size}
; prime_tower_wipe_enabled = {prime_tower_wipe_enabled}
; print_sequence = {print_sequence}
; raft_acceleration = {raft_acceleration}
; raft_airgap = {raft_airgap}
; raft_base_acceleration = {raft_base_acceleration}
; raft_base_extruder_nr = {raft_base_extruder_nr}
; raft_base_fan_speed = {raft_base_fan_speed}
; raft_base_jerk = {raft_base_jerk}
; raft_base_line_spacing = {raft_base_line_spacing}
; raft_base_line_width = {raft_base_line_width}
; raft_base_speed = {raft_base_speed}
; raft_base_thickness = {raft_base_thickness}
; raft_base_wall_count = {raft_base_wall_count}
; raft_fan_speed = {raft_fan_speed}
; raft_interface_acceleration = {raft_interface_acceleration}
; raft_interface_extruder_nr = {raft_interface_extruder_nr}
; raft_interface_fan_speed = {raft_interface_fan_speed}
; raft_interface_jerk = {raft_interface_jerk}
; raft_interface_layers = {raft_interface_layers}
; raft_interface_line_spacing = {raft_interface_line_spacing}
; raft_interface_line_width = {raft_interface_line_width}
; raft_interface_speed = {raft_interface_speed}
; raft_interface_thickness = {raft_interface_thickness}
; raft_jerk = {raft_jerk}
; raft_margin = {raft_margin}
; raft_remove_inside_corners = {raft_remove_inside_corners}
; raft_smoothing = {raft_smoothing}
; raft_speed = {raft_speed}
; raft_surface_acceleration = {raft_surface_acceleration}
; raft_surface_extruder_nr = {raft_surface_extruder_nr}
; raft_surface_fan_speed = {raft_surface_fan_speed}
; raft_surface_jerk = {raft_surface_jerk}
; raft_surface_layers = {raft_surface_layers}
; raft_surface_line_spacing = {raft_surface_line_spacing}
; raft_surface_line_width = {raft_surface_line_width}
; raft_surface_speed = {raft_surface_speed}
; raft_surface_thickness = {raft_surface_thickness}
; relative_extrusion = {relative_extrusion}
; remove_empty_first_layers = {remove_empty_first_layers}
; retract_at_layer_change = {retract_at_layer_change}
; retraction_amount = {retraction_amount}
; retraction_combing = {retraction_combing}
; retraction_combing_max_distance = {retraction_combing_max_distance}
; retraction_count_max = {retraction_count_max}
; retraction_enable = {retraction_enable}
; retraction_extra_prime_amount = {retraction_extra_prime_amount}
; retraction_extrusion_window = {retraction_extrusion_window}
; retraction_hop = {retraction_hop}
; retraction_hop_after_extruder_switch = {retraction_hop_after_extruder_switch}
; retraction_hop_after_extruder_switch_height = {retraction_hop_after_extruder_switch_height}
; retraction_hop_enabled = {retraction_hop_enabled}
; retraction_hop_only_when_collides = {retraction_hop_only_when_collides}
; retraction_min_travel = {retraction_min_travel}
; retraction_prime_speed = {retraction_prime_speed}
; retraction_retract_speed = {retraction_retract_speed}
; retraction_speed = {retraction_speed}
; roofing_angles = {roofing_angles}
; roofing_extruder_nr = {roofing_extruder_nr}
; roofing_layer_count = {roofing_layer_count}
; roofing_line_width = {roofing_line_width}
; roofing_material_flow = {roofing_material_flow}
; roofing_monotonic = {roofing_monotonic}
; roofing_pattern = {roofing_pattern}
; skin_angles = {skin_angles}
; skin_edge_support_layers = {skin_edge_support_layers}
; skin_edge_support_thickness = {skin_edge_support_thickness}
; skin_line_width = {skin_line_width}
; skin_material_flow = {skin_material_flow}
; skin_material_flow_layer_0 = {skin_material_flow_layer_0}
; skin_monotonic = {skin_monotonic}
; skin_no_small_gaps_heuristic = {skin_no_small_gaps_heuristic}
; skin_outline_count = {skin_outline_count}
; skin_overlap = {skin_overlap}
; skin_overlap_mm = {skin_overlap_mm}
; skin_preshrink = {skin_preshrink}
; skirt_brim_extruder_nr = {skirt_brim_extruder_nr}
; skirt_brim_line_width = {skirt_brim_line_width}
; skirt_brim_material_flow = {skirt_brim_material_flow}
; skirt_brim_minimal_length = {skirt_brim_minimal_length}
; skirt_brim_speed = {skirt_brim_speed}
; skirt_gap = {skirt_gap}
; skirt_line_count = {skirt_line_count}
; slicing_tolerance = {slicing_tolerance}
; small_feature_max_length = {small_feature_max_length}
; small_feature_speed_factor = {small_feature_speed_factor}
; small_feature_speed_factor_0 = {small_feature_speed_factor_0}
; small_hole_max_size = {small_hole_max_size}
; smooth_spiralized_contours = {smooth_spiralized_contours}
; speed_equalize_flow_width_factor = {speed_equalize_flow_width_factor}
; speed_infill = {speed_infill}
; speed_ironing = {speed_ironing}
; speed_layer_0 = {speed_layer_0}
; speed_prime_tower = {speed_prime_tower}
; speed_print = {speed_print}
; speed_print_layer_0 = {speed_print_layer_0}
; speed_roofing = {speed_roofing}
; speed_slowdown_layers = {speed_slowdown_layers}
; speed_support = {speed_support}
; speed_support_bottom = {speed_support_bottom}
; speed_support_infill = {speed_support_infill}
; speed_support_interface = {speed_support_interface}
; speed_support_roof = {speed_support_roof}
; speed_topbottom = {speed_topbottom}
; speed_travel = {speed_travel}
; speed_travel_layer_0 = {speed_travel_layer_0}
; speed_wall = {speed_wall}
; speed_wall_0 = {speed_wall_0}
; speed_wall_x = {speed_wall_x}
; speed_z_hop = {speed_z_hop}
; sub_div_rad_add = {sub_div_rad_add}
; support_angle = {support_angle}
; support_bottom_angles = {support_bottom_angles}
; support_bottom_density = {support_bottom_density}
; support_bottom_distance = {support_bottom_distance}
; support_bottom_enable = {support_bottom_enable}
; support_bottom_extruder_nr = {support_bottom_extruder_nr}
; support_bottom_height = {support_bottom_height}
; support_bottom_line_distance = {support_bottom_line_distance}
; support_bottom_line_width = {support_bottom_line_width}
; support_bottom_material_flow = {support_bottom_material_flow}
; support_bottom_offset = {support_bottom_offset}
; support_bottom_pattern = {support_bottom_pattern}
; support_bottom_stair_step_height = {support_bottom_stair_step_height}
; support_bottom_stair_step_min_slope = {support_bottom_stair_step_min_slope}
; support_bottom_stair_step_width = {support_bottom_stair_step_width}
; support_bottom_wall_count = {support_bottom_wall_count}
; support_brim_enable = {support_brim_enable}
; support_brim_line_count = {support_brim_line_count}
; support_brim_width = {support_brim_width}
; support_conical_angle = {support_conical_angle}
; support_conical_enabled = {support_conical_enabled}
; support_conical_min_width = {support_conical_min_width}
; support_connect_zigzags = {support_connect_zigzags}
; support_enable = {support_enable}
; support_extruder_nr = {support_extruder_nr}
; support_extruder_nr_layer_0 = {support_extruder_nr_layer_0}
; support_fan_enable = {support_fan_enable}
; support_infill_angles = {support_infill_angles}
; support_infill_extruder_nr = {support_infill_extruder_nr}
; support_infill_rate = {support_infill_rate}
; support_infill_sparse_thickness = {support_infill_sparse_thickness}
; support_initial_layer_line_distance = {support_initial_layer_line_distance}
; support_interface_angles = {support_interface_angles}
; support_interface_density = {support_interface_density}
; support_interface_enable = {support_interface_enable}
; support_interface_extruder_nr = {support_interface_extruder_nr}
; support_interface_height = {support_interface_height}
; support_interface_line_width = {support_interface_line_width}
; support_interface_material_flow = {support_interface_material_flow}
; support_interface_offset = {support_interface_offset}
; support_interface_pattern = {support_interface_pattern}
; support_interface_skip_height = {support_interface_skip_height}
; support_interface_wall_count = {support_interface_wall_count}
; support_join_distance = {support_join_distance}
; support_line_distance = {support_line_distance}
; support_line_width = {support_line_width}
; support_material_flow = {support_material_flow}
; support_mesh = {support_mesh}
; support_mesh_drop_down = {support_mesh_drop_down}
; support_meshes_present = {support_meshes_present}
; support_offset = {support_offset}
; support_pattern = {support_pattern}
; support_roof_angles = {support_roof_angles}
; support_roof_density = {support_roof_density}
; support_roof_enable = {support_roof_enable}
; support_roof_extruder_nr = {support_roof_extruder_nr}
; support_roof_height = {support_roof_height}
; support_roof_line_distance = {support_roof_line_distance}
; support_roof_line_width = {support_roof_line_width}
; support_roof_material_flow = {support_roof_material_flow}
; support_roof_offset = {support_roof_offset}
; support_roof_pattern = {support_roof_pattern}
; support_roof_wall_count = {support_roof_wall_count}
; support_skip_some_zags = {support_skip_some_zags}
; support_skip_zag_per_mm = {support_skip_zag_per_mm}
; support_structure = {support_structure}
; support_supported_skin_fan_speed = {support_supported_skin_fan_speed}
; support_top_distance = {support_top_distance}
; support_tower_diameter = {support_tower_diameter}
; support_tower_maximum_supported_diameter = {support_tower_maximum_supported_diameter}
; support_tower_roof_angle = {support_tower_roof_angle}
; support_tree_angle = {support_tree_angle}
; support_tree_branch_diameter = {support_tree_branch_diameter}
; support_tree_branch_diameter_angle = {support_tree_branch_diameter_angle}
; support_tree_branch_distance = {support_tree_branch_distance}
; support_tree_collision_resolution = {support_tree_collision_resolution}
; support_tree_max_diameter = {support_tree_max_diameter}
; support_type = {support_type}
; support_use_towers = {support_use_towers}
; support_wall_count = {support_wall_count}
; support_xy_distance = {support_xy_distance}
; support_xy_distance_overhang = {support_xy_distance_overhang}
; support_xy_overrides_z = {support_xy_overrides_z}
; support_z_distance = {support_z_distance}
; support_zag_skip_count = {support_zag_skip_count}
; switch_extruder_extra_prime_amount = {switch_extruder_extra_prime_amount}
; switch_extruder_prime_speed = {switch_extruder_prime_speed}
; switch_extruder_retraction_amount = {switch_extruder_retraction_amount}
; switch_extruder_retraction_speed = {switch_extruder_retraction_speed}
; switch_extruder_retraction_speeds = {switch_extruder_retraction_speeds}
; top_bottom_extruder_nr = {top_bottom_extruder_nr}
; top_bottom_pattern = {top_bottom_pattern}
; top_bottom_pattern_0 = {top_bottom_pattern_0}
; top_bottom_thickness = {top_bottom_thickness}
; top_layers = {top_layers}
; top_skin_expand_distance = {top_skin_expand_distance}
; top_skin_preshrink = {top_skin_preshrink}
; top_thickness = {top_thickness}
; travel_avoid_distance = {travel_avoid_distance}
; travel_avoid_other_parts = {travel_avoid_other_parts}
; travel_avoid_supports = {travel_avoid_supports}
; travel_retract_before_outer_wall = {travel_retract_before_outer_wall}
; wall_0_extruder_nr = {wall_0_extruder_nr}
; wall_0_inset = {wall_0_inset}
; wall_0_material_flow = {wall_0_material_flow}
; wall_0_material_flow_layer_0 = {wall_0_material_flow_layer_0}
; wall_0_wipe_dist = {wall_0_wipe_dist}
; wall_distribution_count = {wall_distribution_count}
; wall_extruder_nr = {wall_extruder_nr}
; wall_line_count = {wall_line_count}
; wall_line_width = {wall_line_width}
; wall_line_width_0 = {wall_line_width_0}
; wall_line_width_x = {wall_line_width_x}
; wall_material_flow = {wall_material_flow}
; wall_overhang_angle = {wall_overhang_angle}
; wall_overhang_speed_factor = {wall_overhang_speed_factor}
; wall_thickness = {wall_thickness}
; wall_transition_angle = {wall_transition_angle}
; wall_transition_filter_deviation = {wall_transition_filter_deviation}
; wall_transition_filter_distance = {wall_transition_filter_distance}
; wall_transition_length = {wall_transition_length}
; wall_x_extruder_nr = {wall_x_extruder_nr}
; wall_x_material_flow = {wall_x_material_flow}
; wall_x_material_flow_layer_0 = {wall_x_material_flow_layer_0}
; wipe_brush_pos_x = {wipe_brush_pos_x}
; wipe_hop_amount = {wipe_hop_amount}
; wipe_hop_enable = {wipe_hop_enable}
; wipe_hop_speed = {wipe_hop_speed}
; wipe_move_distance = {wipe_move_distance}
; wipe_pause = {wipe_pause}
; wipe_repeat_count = {wipe_repeat_count}
; wipe_retraction_amount = {wipe_retraction_amount}
; wipe_retraction_enable = {wipe_retraction_enable}
; wipe_retraction_extra_prime_amount = {wipe_retraction_extra_prime_amount}
; wipe_retraction_prime_speed = {wipe_retraction_prime_speed}
; wipe_retraction_retract_speed = {wipe_retraction_retract_speed}
; wipe_retraction_speed = {wipe_retraction_speed}
; wireframe_bottom_delay = {wireframe_bottom_delay}
; wireframe_drag_along = {wireframe_drag_along}
; wireframe_enabled = {wireframe_enabled}
; wireframe_fall_down = {wireframe_fall_down}
; wireframe_flat_delay = {wireframe_flat_delay}
; wireframe_flow = {wireframe_flow}
; wireframe_flow_connection = {wireframe_flow_connection}
; wireframe_flow_flat = {wireframe_flow_flat}
; wireframe_height = {wireframe_height}
; wireframe_nozzle_clearance = {wireframe_nozzle_clearance}
; wireframe_printspeed = {wireframe_printspeed}
; wireframe_printspeed_bottom = {wireframe_printspeed_bottom}
; wireframe_printspeed_down = {wireframe_printspeed_down}
; wireframe_printspeed_flat = {wireframe_printspeed_flat}
; wireframe_printspeed_up = {wireframe_printspeed_up}
; wireframe_roof_drag_along = {wireframe_roof_drag_along}
; wireframe_roof_fall_down = {wireframe_roof_fall_down}
; wireframe_roof_inset = {wireframe_roof_inset}
; wireframe_roof_outer_delay = {wireframe_roof_outer_delay}
; wireframe_straight_before_down = {wireframe_straight_before_down}
; wireframe_strategy = {wireframe_strategy}
; wireframe_top_delay = {wireframe_top_delay}
; wireframe_top_jump = {wireframe_top_jump}
; wireframe_up_half_speed = {wireframe_up_half_speed}
; xy_offset = {xy_offset}
; xy_offset_layer_0 = {xy_offset_layer_0}
; z_seam_corner = {z_seam_corner}
; z_seam_position = {z_seam_position}
; z_seam_relative = {z_seam_relative}
; z_seam_type = {z_seam_type}
; z_seam_x = {z_seam_x}
; z_seam_y = {z_seam_y}
; zig_zaggify_infill = {zig_zaggify_infill}
; zig_zaggify_support = {zig_zaggify_support}
;------------------------------------------
@BEDREADY ; Octoprint plugin that checks the bed
;------------------------------------------
;*** Start Dual Nozzle/Bed Preheating ***
M140 S{material_bed_temperature_layer_0} ; start preheating the bed
M104 S{material_print_temperature_layer_0}  T0 ; start preheating hotend
G28 ; home
M190 S{material_bed_temperature_layer_0} ; heat to Cura Bed setting
M109 S{material_print_temperature_layer_0}  T0 ; heat to Cura Hotend
;*** End Preheating ***
;--------------------------------------------
; Powerloss recovery (writes to SD)
M413    ; Get the current state
M413 S1 ; Enable powerloss recovery
;--------------------------------------------
; Load UBL mesh and tilt
G29 A; Activate UBL
G29 L0; Load the mesh from slot 0
G29 J; Tilt the mesh after a three point probe
;--------------------------------------------
;*** Draw a Nozzle Cleaning line on the Left Side of Bed
G28 ;Home
G92 E0 ;Reset Extruder
G1 Z2.0 F3000 ;Move Z Axis up
G1 X10.1 Y20 Z0.28 F5000.0 ;Move to start position
G1 X10.1 Y200.0 Z0.28 F1500.0 E15 ;Draw the first line
G1 X10.4 Y200.0 Z0.28 F5000.0 ;Move to side a little
G1 X10.4 Y20 Z0.28 F1500.0 E30 ;Draw the second line
G92 E0 ;Reset Extruder
G1 Z2.0 F3000 ;Move Z Axis up
G1 X5 Y20 Z0.3 F5000.0 ; Move over to prevent blob squish
