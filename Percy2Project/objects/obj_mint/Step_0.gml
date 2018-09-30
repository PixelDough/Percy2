
grounded = place_meeting(x, y+1, obj_solid);

//if velocity[0] != 0 {
//	image_xscale = sign(velocity[0]);
//}
if dir != 0 {
	image_xscale = sign(dir);
}

do_physics(false, false, jh, dir, velocity[0], 0.05);
velocity = collide(velocity);


