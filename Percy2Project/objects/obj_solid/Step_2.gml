

if solid_ {
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
		if _hit event_user(0);
	}

	var _riders = ds_list_create();
	instance_place_list(x, y-2, physics_object, _riders, true);
	for (var _i=0; _i<ds_list_size(_riders); _i++) {
		if instance_exists(_riders[|_i]) {
			if (object_is_ancestor(_riders[|_i].object_index, physics_object)){
				with _riders[|_i] {
					make_platform(obj_platform);
				}
				if solid_ {
					//Keep the player on the ground they're standing on
					with _riders[|_i] {
						x += other.velocity[0];
						y += other.velocity[1];
					}

				}
			}
		}
	}
	ds_list_destroy(_riders)
}

x += velocity[0];
y += velocity[1];