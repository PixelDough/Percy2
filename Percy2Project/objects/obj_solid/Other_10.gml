/// @description BLOCK HIT EVENT
gamepad_set_vibration(0, 1, 1)
if solid_ and !object_is_ancestor(object_index, obj_platform)
	obj_player.velocity[1] = 0;