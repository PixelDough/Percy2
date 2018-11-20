if hidden exit;

if input.u_p {
	global.player_door = target_door;
	if room != obj_control.CURRENT_LEVEL[target_room] {
		room_goto_circle(obj_control.CURRENT_LEVEL[target_room]);
	} else {
		//var _other_door = instance_nearest_notme(obj_door);
		var _player = other;
		var _door = self;
		with obj_door {
			if target_door == _door.target_door and self != _door {
				_player.x = self.x;
				_player.y = self.y;
			}
		}
	}
}