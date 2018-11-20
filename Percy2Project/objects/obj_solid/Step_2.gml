//var _nearest = instance_nearest(x, y, physics_object)
//if distance_to_object(_nearest) > 16 and object_index == obj_solid {
//	exit;
//}

if object_index == obj_solid and distance_to_object(instance_nearest(x, y, physics_object)) > 16 {
	exit;
}

if solid_ {
	if block_hit() and instance_exists(obj_player) {
		var _hit = true;
		var _dist = point_distance(obj_player.x, obj_player.bbox_top, x+(sprite_width/2), y+(sprite_height/2));
		with all {
			if object_is_ancestor(object_index, obj_solid) or object_index == obj_solid {
				if _dist > point_distance(obj_player.x, obj_player.bbox_top, x+(sprite_width/2), y+(sprite_height/2)) {
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
				if solid_ and _riders[|_i].y < y {
					with _riders[|_i] {
						collide(other.velocity);
					}
				}
			}
		}
	}
	ds_list_destroy(_riders)
}

x += velocity[0];
y += velocity[1];

if solid_ {
	var _x_hit = instance_place_plus(x, y, physics_object);
	with _x_hit {
		if bbox_bottom+1 > other.bbox_top {
			solid_ = false;
			exit;
		}
		var _hit_kill = instance_place_plus(x+sign(other.velocity[0]), y+sign(other.velocity[1]), other)
		if _hit_kill {
			make_dead(self);
			exit;
		}
	}
	while _x_hit {
		_x_hit.x += sign(velocity[0]);
		_x_hit.y += sign(velocity[1]);
		_x_hit = instance_place_plus(x, y, physics_object);
	}
}