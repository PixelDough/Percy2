if hidden exit;

if input.u_p {
	other.x = x;
	other.y = y;
	other.sprite_index = spr_percy_in;
	global.player_door = target_door;
	if room != global.level_rooms[target_room] {
		room_goto_circle(global.level_rooms[target_room], false, global.levels[# global.level_num, 4]);
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