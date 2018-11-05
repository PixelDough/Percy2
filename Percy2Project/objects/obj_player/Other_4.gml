
if global.player_door != -1 {
	with obj_door {
		if target_door == global.player_door {
			other.x = x;
			other.y = y;
		}
	}
	global.player_door = -1
}