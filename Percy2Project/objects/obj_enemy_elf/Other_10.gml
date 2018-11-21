/// @description WALK EVENT

// Inherit the parent event

image_index = 0;

if grounded {
	velocity[0] *= -1;
	jumps++;
	if jumps > jumps_max {
		ACTION = ELF.JUMP;
		jumps = 0;
		do_physics(grounded, false, jh2, 0, 0, 0.05);
		velocity = collide(velocity);
		exit;
	}
}

do_physics(grounded, false, jh, dir, velocity[0], 0.05);
velocity = collide(velocity);
