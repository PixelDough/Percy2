image_index = 1;

dir = [-0.5, 0];

ps_snow = part_system_create_layer(layer_get_id("META"), false);
pe_snow = part_emitter_create(ps_snow);
pt_snow = part_type_create()

part_emitter_region(ps_snow, pe_snow, bbox_left, bbox_right, bbox_top-8, bbox_top-8, ps_shape_rectangle, ps_distr_linear);

part_type_life(pt_snow, 60, 480);
part_type_color_rgb(pt_snow, 255, 255, 255, 255, 255, 255);
part_type_direction(pt_snow, 200, 245, 0.2, 0.2);
part_type_speed(pt_snow, 0.5, 2, 0, 0);
part_type_shape(pt_snow, ps_shape_ellipse);
part_type_sprite(pt_snow, spr_part_snow, true, true, false);

part_emitter_burst(ps_snow, pe_snow, pt_snow, 1000)
part_emitter_stream(ps_snow, pe_snow, pt_snow, 5);