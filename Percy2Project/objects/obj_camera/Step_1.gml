if instance_exists(obj_player)
	target_object = obj_player;
else
	target_object = self;
if room == rm_overworld target_object = obj_map_cursor;

//if display_get_gui_width() != floor(window_get_width()/width)*width or display_get_gui_height() != floor(window_get_height()/height)*height
	//display_set_gui_size(floor(window_get_width()/width)*width, floor(window_get_height()/height)*height);

//instance_activate_region(x-width/2, y-height/2, width, height, true)