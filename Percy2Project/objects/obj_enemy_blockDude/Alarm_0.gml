/// @description Jump alarm

var _jh = jh;
ACTION = BLOCK.JUMP;
if instance_exists(obj_player) {
	velocity[0] = sign(obj_player.x - x);
	if abs((bbox_left+(bbox_right-bbox_left)/2)-obj_player.x) < abs(bbox_bottom-obj_player.bbox_bottom) {
		velocity[0] = velocity[0]/2;
		_jh = jh2;
	}
}

//if round(x)%2 == 0 _jh/=2;

do_physics(grounded, false, _jh, dir, velocity[0], 0.05);
collide(velocity);