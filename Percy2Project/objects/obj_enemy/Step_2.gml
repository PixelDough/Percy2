
var _grounded = instance_place_plus(x, y+4, obj_solid);
if _grounded {
	if _grounded.velocity[1] < 0 {
		make_dead(self);
		exit;
	}
}