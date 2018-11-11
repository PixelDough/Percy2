///@description JUMP EVENT

image_index = 0;
if velocity[1] < -1 image_index = 1

if instance_place_plus(x+sign(velocity[0]), y, obj_solid) velocity[0] *= -1;

if grounded{
	ACTION = BLOCK.SIT;
	exit;
}

do_physics(grounded, false, jh, dir, velocity[0], 0.05);
velocity = collide(velocity);

