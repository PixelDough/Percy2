if instance_exists(obj_player)
	target_object = obj_player;
else
	target_object = self;
if room == rm_overworld target_object = obj_map_cursor;

