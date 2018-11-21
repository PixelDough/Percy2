/// @description JUMP EVENT

if velocity[1] < 0 {
	image_index = 1;
} else {
	if floor(image_index) != 2 {
		var _hammer = instance_create_depth(x, bbox_top, depth-1, obj_enemy_hammer);
		_hammer.velocity[0] = image_xscale;
	}
	image_index = 2;
}

if grounded {
	velocity[0] = jump_dir * spd;
	ACTION = ELF.WALK;
} else {
	do_physics(false, false, jh2, 0, 0, 0.05);
	velocity = collide(velocity);
}

