///@description SIT EVENT

image_index = 0;
if velocity[1] < -1 image_index = 1

if grounded {
	if alarm[0] <= 0 alarm[0] = 30;
	image_index = 2;
}



if instance_place_plus(x+sign(velocity[0]), y, obj_solid) velocity[0] *= -1;

do_physics(false, false, jh, 0, 0, 0.05);
velocity = collide(velocity);