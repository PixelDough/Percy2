
var _platform = instance_place_plus(x, y+2, obj_platform);
if _platform {
	if _platform.solid_ {
		//Keep the player on the ground they're standing on
		if (y) <= (_platform.bbox_top) {
			if velocity[1] >= 0 {
				y = floor(_platform.bbox_top);
				//y += _platform.y - _platform.yprevious
				velocity[1] = _platform.velocity[1]
			}
			collide(_platform.velocity);
		}
		//if velocity[1] >=0 {
			if (_platform.velocity[0] != 0 or _platform.velocity[1] != 0)
				with _platform
					move_push(other)
		//}
	}
}