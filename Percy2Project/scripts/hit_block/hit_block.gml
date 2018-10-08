if block_hit() and instance_exists(obj_player) {
	var _hit = true;
	var _dist = point_distance(obj_player.x, obj_player.bbox_top, x+sprite_width/2, y+sprite_height/2);
	with all {
		if object_is_ancestor(object_index, obj_solid) or object_index == obj_solid {
			if _dist > point_distance(obj_player.x, obj_player.bbox_top, x+sprite_width/2, y+sprite_height/2) {
				if obj_player.y > bbox_bottom
					_hit = false
			}
		
		}
	
	}
	if _hit {
		event_user(0);
		obj_player.velocity[1] = 0;
	}
}