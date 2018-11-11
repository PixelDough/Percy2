
if other.velocity[1] > 0 { 
	
	with other {
		y = other.bbox_top;
		velocity[1] = -sqrt(2 * grav * jh)
	}
	audio_play_sound(snd_pop, 100, false);
	if other.POWER == POWERS.ICE {
		instance_create_layer(bbox_left, bbox_top, layer, obj_IceBlock);
		instance_destroy();
	} else {
		make_dead(self);
	}
} else {
	make_dead(other);
}