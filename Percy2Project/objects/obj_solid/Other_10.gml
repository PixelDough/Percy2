/// @description BLOCK HIT EVENT
gamepad_set_vibration(0, 1, 1)
if solid_ and !object_is_ancestor(object_index, obj_platform) {
	if obj_player.bbox_top > bbox_bottom {
		obj_player.y = bbox_bottom + (obj_player.bbox_bottom-obj_player.bbox_top) + 3
	}
	obj_player.velocity[1] = 0;
}