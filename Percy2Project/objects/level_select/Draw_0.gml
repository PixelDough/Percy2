
global.level_num = SEL;

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
		
		draw_set_color(c_white);
		draw_set_halign(fa_right);
		draw_set_valign(fa_top);
		//draw_text(room_width - 12, 12, "LEVEL CLEARED\n\n" + (global.levels[# global.level_num, 1] == 0 ? "NO" : "YES") 
		//+ "\n\n\nCOCO FOUND\n\n" + (global.levels[# global.level_num, 2] == 0 ? "NO" : "YES"));
		//draw_text(room_width - 12, 24, "COCO FOUND" + string(global.levels[# global.level_num, 2]));
		
		
		
		
		
		for (var _a=0; _a<array_length_1d(AWARDS); _a++) {
			
			// Move awards
			AWARDS[_a] = lerp(AWARDS[_a], (xstart-(room_width/6))*(global.levels[# global.level_num, _a+1]), 0.2);
			
			// Draw buttons
			gpu_set_fog(true, c_black, 0, 1)
			draw_sprite(spr_menu_awards, _a, room_width+4-AWARDS[_a], (room_height*((1+_a)/4))+4);
			gpu_set_fog(false, c_black, 0, 1)
			
			draw_sprite(spr_menu_awards, _a, room_width-AWARDS[_a], room_height*((1+_a)/4));
			
		}
		
		
	}
	
	draw_sprite(spr_menu_levels, _i, x + _x, y + _y);
	
	if _i+1 > 1+(date_current_datetime() - global.saveGame_date) and !DEBUG {
		draw_sprite(spr_menu_levels_presents, _i, x + _x, y + _y);
	} else {
		if SEL == _i {
			if input.action_one_pressed {
				var _levels = global.levels[# global.level_num, 0];
				if _levels != noone and is_array(_levels) {
					if room_exists(_levels[global.level_room]) {
				
						global.level_rooms = [];
						global.level_rooms = level_load(global.levels[# global.level_num, 0]);
						room_goto_circle(global.level_rooms[global.level_room], false, global.levels[# global.level_num, 4]);
					}
				}
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
	save_game();
}
