
if obj_3d_gameWorld.SPINNING exit;

var _x = abs((obj_camera.x-obj_camera.width/2)*2)-16
_x = -48;

for (var _i=0; _i<array_length_1d(BUTTONS); _i++) {
	var _button = BUTTONS[_i];
	
	// Move buttons
	_button[1] = lerp(_button[1], 16*(SEL == _i), 0.2);
	
	// Draw buttons
	gpu_set_fog(true, c_black, 0, 1)
	draw_sprite(_button[0], 0, _x+4+_button[1], (room_height*((1+_i)/4))+4);
	gpu_set_fog(false, c_black, 0, 1)

	draw_sprite(_button[0], 0, _x+_button[1], room_height*((1+_i)/4));
	
	// Draw text
	if SEL == _i {
		
		draw_set_halign(fa_center);
		draw_set_color(c_white);
		draw_text(room_width/2, 16, string_upper(_button[2]));
		
	}
	
	BUTTONS[_i] = _button	
}

// Menu options
var _mode = MODES[MODE];

// NEW GAME STUFF
if SEL == MENU_MAIN.NEW {
	
	draw_text(room_width/2, 64, "< " + _mode[0] + " >" + "\n\n" + _mode[1]);
	
	MODE += (input.r_p - input.l_p);
	if MODE < 0 MODE = array_length_1d(MODES)-1;
	if MODE > array_length_1d(MODES)-1 MODE = 0;
	
	if input.action_one_pressed {
		new_game(MODE);
		room_goto_circle(rm_levelSelect, false, mus_FrostyFrolicTitle);
	}
	
}


SEL = clamp(SEL + (input.d_p - input.u_p), 0, array_length_1d(BUTTONS)-1);

