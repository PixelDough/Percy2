

//if solid_ {
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
	
	////if object_is_ancestor(object_index, obj_platform) solid_ = false;
	//if object_is_ancestor(object_index, obj_platform) {
	//	with physics_object {
	//		if object_is_ancestor(object_index, physics_object) {
	//			make_platform(obj_platform);
	//			var _platform = instance_place_plus(x, y+2, obj_platform) 
	//			if _platform {
	//				if _platform.solid_ {
	//					//Keep the player on the ground they're standing on
	//					if ceil(bbox_bottom) <= ceil(_platform.bbox_top) {
	//						if velocity[1] >= 0
	//							y = ceil(_platform.bbox_top);
	//						collide(_platform.velocity);
	//					}
	//					if velocity[1] >=0 {
	//						//if (_self.velocity[0] != 0 or _self.velocity[1] != 0)
	//							//with _self move_push(self)
	//					}
	//				}
	//			}
	//		}
	//	}
	//}
	var _riders = ds_list_create();
	instance_place_list(x, y-4, physics_object, _riders, true);
	for (var _i=0; _i<ds_list_size(_riders); _i++) {
		if instance_exists(_riders[|_i]) {
			//if (object_is_ancestor(_riders[|_i].object_index, physics_object)){
				with _riders[|_i] make_platform(obj_platform);
				if solid_ {
					//Keep the player on the ground they're standing on
					//if ceil(_riders[|_i].y) <= ceil(bbox_top) {
						with _riders[|_i] {
							y = (other.bbox_top-1);
							x += other.velocity[0];
							y += other.velocity[1];
						}
						
				}
			//}
		}
	}
	ds_list_destroy(_riders)
//}

x += velocity[0];
y += velocity[1];