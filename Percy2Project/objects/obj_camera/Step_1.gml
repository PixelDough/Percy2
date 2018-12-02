if instance_exists(obj_player)
	target_object = obj_player;
else
	target_object = self;
if room == rm_overworld target_object = obj_map_cursor;

if !surface_exists(global.surfaceEnd) {
	global.surfaceEnd = surface_create(400, 240);
}
if !surface_exists(global.gui) {
	global.gui = surface_create(400, 240);
}

if input.select_pressed {
	global.CRT = !global.CRT;
}
if keyboard_check_pressed(ord("F")) window_set_fullscreen(!window_get_fullscreen())

//if display_get_gui_width() != floor(window_get_width()/width)*width or display_get_gui_height() != floor(window_get_height()/height)*height
	//display_set_gui_size(floor(window_get_width()/width)*width, floor(window_get_height()/height)*height);

//instance_activate_region(x-width/2, y-height/2, width, height, true)