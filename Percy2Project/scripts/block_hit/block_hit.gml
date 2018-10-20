if instance_exists(obj_player) {
	if instance_place(x-obj_player.velocity[0]-1, y-obj_player.velocity[1]-1, obj_player) {
		if obj_player.velocity[1] <= 0 and obj_player.bbox_top >= bbox_bottom {
			return true;
		}
	}
}