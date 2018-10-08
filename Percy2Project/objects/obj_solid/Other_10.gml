/// @description BLOCK HIT EVENT
if solid_ and !object_is_ancestor(object_index, obj_platform)
	obj_player.velocity[1] = 0;