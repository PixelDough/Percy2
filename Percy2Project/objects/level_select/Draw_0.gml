
for (var _i=0; _i<image_number; _i++) {
	
	var _x = (floor(_i%6) * sprite_width + (floor(_i%6) * 8));
	var _y = (floor(_i/6) * sprite_height + (floor(_i/6) * 8));
	
	gpu_set_fog(true, $B01200, 0, 1);
	draw_sprite(spr_menu_levels, _i, x + _x + 4, y + _y + 4);
	gpu_set_fog(false, $B01200, 0, 1);
	
	if SEL == _i {
		draw_sprite_outlined(sprite_index, image_index, x + _x, y + _y, 1, 1, 0, c_black, c_yellow);
	}
	
	draw_sprite(spr_menu_levels, _i, x + _x, y + _y);
	
}


SEL = clamp(SEL + (input.r_p - input.l_p) + ((input.d_p - input.u_p)*6), 0, image_number-1);


if input.action_one_pressed {
	obj_control.CURRENT_LEVEL = [];
	obj_control.CURRENT_LEVEL = level_load(obj_control.LEVELS, obj_control.LEVEL);
	room_goto_circle(obj_control.CURRENT_LEVEL[obj_control.ROOM], false, mus_FrostyFrolic);
}