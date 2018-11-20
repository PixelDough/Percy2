
if obj_3d_gameWorld.SPINNING exit;

//draw_sprite(spr_menuBar, 1, 0, room_height*.5);
//draw_sprite(spr_menuBar, 0, 0, room_height*.65);

//draw_sprite_tiled()
//gpu_set_blendmode_ext(bm_src_color, bm_dest_alpha)
//gpu_set_blendmode(bm_one)

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
	
	draw_text(room_width/2, 64, "< " + _mode[0] + " >");
	draw_text(room_width/2, 80, _mode[1]);
	
	MODE += (input.r_p - input.l_p);
	if MODE < 0 MODE = array_length_1d(MODES)-1;
	if MODE > array_length_1d(MODES)-1 MODE = 0;
	
}


SEL = clamp(SEL + (input.d_p - input.u_p), 0, array_length_1d(BUTTONS)-1);

//gpu_set_fog(true, c_black, 0, 1)
//draw_sprite(spr_menu_play, 0, _x+4, (room_height/2/2)+4);
//draw_sprite(spr_menu_exit, 0, _x+4, (room_height/2+(room_height/2/2))+4);
//gpu_set_fog(false, c_black, 0, 1)

//draw_sprite(spr_menu_play, 0, _x, room_height/2/2);
//draw_sprite(spr_menu_exit, 0, _x, room_height/2+(room_height/2/2));
