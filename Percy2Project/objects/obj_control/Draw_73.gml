//draw_text(0, 0, "FRUIT: ")
//draw_sprite(spr_hud, 0, -1, -1)

if surface_exists(global.gui) {

	surface_set_target(global.gui);
	
		if room == rm_title_3d {
			draw_set_halign(fa_center);
			draw_set_valign(fa_middle);
			draw_set_color(c_white);
			var _menu_x = obj_camera.width/2
			var _menu_y = obj_camera.height/1.5
			//draw_text(_menu_x, _menu_y, "NEW GAME");
			//draw_text(_menu_x, _menu_y+12, "OPTIONS");
			//draw_text(_menu_x, _menu_y+24, "QUIT");
		}

		if global.paused {
			if sprite_exists(global.paused_sprite) {
				draw_sprite(global.paused_sprite, 0, 0, 0);
			}
			draw_set_alpha(0.5);
			draw_set_color(c_black);
			draw_rectangle(0, 0, obj_camera.width, obj_camera.height, false);
			draw_set_alpha(1);
			//draw_sprite_tiled(spr_bg_snow, 0, global.time, global.time);
			draw_sprite(spr_paused, 0, obj_camera.width-16, 16);
	
			var _SEL_PAUSE_last = SEL_PAUSE;
			SEL_PAUSE = clamp(SEL_PAUSE + (input.d_p - input.u_p), 0, array_length_1d(BUTTONS_PAUSE)-1);
			if SEL_PAUSE != _SEL_PAUSE_last {
				var _snd = play_sound(snd_select1);
				audio_sound_pitch(_snd, 1+(SEL_PAUSE/10))
			}
	
			var _x = 32
			var _y = obj_camera.height - 96;

			for (var _i=0; _i<array_length_1d(BUTTONS_PAUSE); _i++) {
				var _button = BUTTONS_PAUSE[_i];
	
				// Move buttons
				_button[1] = lerp(_button[1], 16*(SEL_PAUSE == _i), 0.2);
		
				// Draw buttons
				gpu_set_fog(true, c_black, 0, 1)
				draw_sprite(_button[0], 0, _x+4+_button[1], _y+4+(_i*8)+(_i * sprite_get_height(_button[0])));
				gpu_set_fog(false, c_black, 0, 1)
		
				if SEL_PAUSE == _i 
					draw_sprite_outlined(_button[0], 0,  _x+_button[1], _y+(_i*8)+(_i * sprite_get_height(_button[0])), 1, 1, 0, c_black, $20bcfa);
		
				draw_sprite(_button[0], 0, _x+_button[1], _y+(_i*8)+(_i * sprite_get_height(_button[0])));
	
				// Draw text
				if SEL_PAUSE == _i {
					draw_set_halign(fa_center);
					draw_set_color(c_white);
			
					if input.action_one_pressed {
						event_user(0);
						if SEL_PAUSE == 1 room_goto_circle(rm_levelSelect, false, mus_FrostyFrolicTitle)
					}
		
				}
	
				BUTTONS_PAUSE[_i] = _button	
			}
		} else {
			SEL_PAUSE = 0;
		}

		if instance_exists(obj_player) {
			if obj_player.object_index == obj_player {
				// Draw coin count
				if collectable == spr_fruits 
					draw_sprite(collectable, hud_fruit, 10, 10);
				else
					draw_sprite(collectable, sprite_get_index_time(collectable, global.time), 10, 10);
				draw_set_halign(fa_left);
				draw_set_valign(fa_middle);
				draw_set_color(c_white);
				draw_text(20, 10, fruits);
	
				// Draw Coco
				draw_set_halign(fa_right);
				draw_set_valign(fa_middle);
				draw_set_color(c_white);
	
				draw_sprite(spr_hotCoco_dark, sprite_get_index_time(spr_hotCoco, global.time), camera_get_view_width(view_camera[0])-10, 10);
	
				if global.levels[# global.level_num, 2] {
					draw_sprite(spr_hotCoco, sprite_get_index_time(spr_hotCoco, global.time), camera_get_view_width(view_camera[0])-10, 10);
				}
	
				//draw_text(camera_get_view_width(view_camera[0])-10-10, 10, "5");
			}
		}
	
	surface_reset_target();
}