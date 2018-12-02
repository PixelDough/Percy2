
var _grounded = instance_position(bbox_left, y+4, obj_solid);
var _grounded2 = instance_position(bbox_right, y+4, obj_solid);
if _grounded {
	if _grounded.velocity[1] < 0 {
		make_dead(self);
		exit;
	}
}
if _grounded2 {
	if _grounded2.velocity[1] < 0 {
		make_dead(self);
		exit;
	}
}