//var _surf = surface_create(floor(window_get_width()/width)*width, floor(window_get_height()/height)*height);

//surface_set_target(_surf)
//shader_set(shd_CRT)
//draw_surface_stretched(application_surface, 0, 0, floor(window_get_width()/width)*width, floor(window_get_height()/height)*height)
//shader_reset();
//surface_reset_target();

//draw_surface_stretched(_surf, 0, 0, floor(window_get_width()/width)*width, floor(window_get_height()/height)*height)

//surface_free(_surf);

//shader_set(shd_CRT)

//surface_resize(application_surface, ((floor(window_get_width()/width)*width) div 4) *4, ((floor(window_get_height()/height)*height) div 4)*4);
display_set_gui_size(((floor(window_get_width()/width)*width) div 4)*4, ((floor(window_get_height()/height)*height) div 4)*4)

//if global.CRT
	//shader_set(shd_blur)
application_surface_draw_enable(false);
if surface_exists(global.surfaceEnd) {
	
	surface_set_target(global.surfaceEnd);
	
		draw_surface(application_surface, 0, 0);
		draw_surface(global.gui, 0, 0);
	surface_reset_target();
	
	draw_surface_stretched(global.surfaceEnd, 0, 0, ((floor(window_get_width()/width)*width) div 4) *4, ((floor(window_get_height()/height)*height) div 4)*4)
	
}
if global.CRT {
	shader_reset();
	//draw_sprite_tiled_ext(spr_scanline, 0, 0, 0, 1, 1, c_white, 0.25)
	draw_set_color(c_black);
	draw_set_alpha(0.25);
	for (var _x=0; _x<display_get_gui_width(); _x++) {
		if _x%8 == 0
			draw_set_color(c_red);
		if _x%8 == 2
			draw_set_color(c_green);
		if _x%8 == 4
			draw_set_color(c_blue);
		if _x%8 == 6
			draw_set_color(c_black);
		draw_line(_x, 0, _x, display_get_gui_height());
	}
	draw_set_alpha(0.5);
	for (var _y=0; _y<display_get_gui_height(); _y+=4) {
		draw_set_color(c_black);
		draw_line(0, _y, display_get_gui_width(), _y);
	}
	draw_set_alpha(1);
}

//shader_reset();