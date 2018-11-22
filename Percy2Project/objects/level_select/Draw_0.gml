
for (var _i=0; _i<image_number; _i++) {
	
	var _x = (floor(_i%6) * sprite_width + (floor(_i%6) * 8));
	var _y = (floor(_i/6) * sprite_height + (floor(_i/6) * 8));
	
	var _level = LEVELS[_i];
	_level[0] = lerp(_level[0], 4*(SEL==_i), 0.2);
	
	gpu_set_fog(true, c_black, 0, 1);
	draw_sprite(spr_menu_levels, _i, x + _x + 4, y + _y + 4);
	gpu_set_fog(false, $B01200, 0, 1);
	
	_x += _level[0];
	_y += _level[0];
	
	if SEL == _i {
		draw_set_color($20bcfa);
		draw_rectangle(x + _x - 2, _y + y - 2, x + _x + sprite_width + 1, y + _y + sprite_height + 1, false);
	}
	
	draw_sprite(spr_menu_levels, _i, x + _x, y + _y);
	
	if _i >= (date_current_datetime() - global.saveGame_date)-1 {
		draw_sprite(spr_menu_levels_presents, _i, x + _x, y + _y);
	} else {
		if SEL == _i {
			if input.action_one_pressed {
				obj_control.CURRENT_LEVEL = [];
				obj_control.CURRENT_LEVEL = level_load(obj_control.LEVELS, SEL);
				room_goto_circle(obj_control.CURRENT_LEVEL[obj_control.ROOM], false, mus_FrostyFrolic);
			}
		}
	}
	
	LEVELS[_i] = _level;
	
}

var _SEL_last = SEL;
SEL = clamp(SEL + (input.r_p - input.l_p) + ((input.d_p - input.u_p)*6), 0, image_number-1);
if SEL != _SEL_last {
	var _snd = play_sound(snd_select1);
	audio_sound_pitch(_snd, 1+(SEL/10))
}

if input.action_two_pressed {
	room_goto_circle(rm_title_3d, false, mus_FrostyFrolicTitle);
}