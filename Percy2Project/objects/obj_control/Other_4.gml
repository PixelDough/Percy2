if room == setup room = rm_pixeldough//room_goto_circle(rm_title_3d, true, mus_FrostyFrolicTitle);
with obj_solid {
	if object_index == obj_solid {
		instance_destroy();
	}
}
tiles_to_solid("Collisions");
global.time = 1;

if room == rm_title_3d {
	load_game();
	obj_camera.x = room_width/2;
	obj_camera.y = room_height/2;
}

if instance_exists(obj_door) or instance_exists(obj_player_start) {
	if instance_exists(obj_player) {
		if global.player_door != -1 {
			with obj_door {
				if target_door == global.player_door {
					obj_player.x = x;
					obj_player.y = y;
				}
			}
			global.player_door = -1
		} else {
			with obj_player_start {
				if instance_exists(obj_player) {
					obj_player.x = x+(bbox_right-bbox_left)/2;
					obj_player.y = bbox_bottom+1;
				}
			}
		}
	} else {
		with obj_player_start {
			var _player = instance_create_layer(x, y, "Instances", obj_player);
			_player.x = x+(bbox_right-bbox_left)/2;
			_player.y = bbox_bottom+1;
		}
	}
}

//room_persistent = true;