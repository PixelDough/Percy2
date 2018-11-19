///@description Custom events

if (velocity[0] != 0) 
	image_xscale = sign(velocity[0]);

do_physics(false, false, jh, dir, velocity[0], 0.05);
velocity = collide(velocity);