if instance_exists(obj_player)
	target_object = obj_player;
else
	target_object = self;
if room == rm_overworld target_object = obj_map_cursor;

//instance_activate_region(x-width/2, y-height/2, width, height, true)