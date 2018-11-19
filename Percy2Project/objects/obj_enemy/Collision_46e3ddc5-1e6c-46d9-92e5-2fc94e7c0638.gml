
if ENABLED {
	if other.velocity[1] > 0 or other.y+other.velocity[1] <= bbox_top+4 { 
	
		with other {
			y = other.bbox_top;
			velocity[1] = -sqrt(2 * grav * jh)
		}
		audio_play_sound(snd_pop, 100, false);
		if other.POWER == POWERS.ICE {
			var _ice = instance_create_layer(round(bbox_left/16)*16, round(bbox_top/16)*16, layer, obj_IceBlock);
			other.y = _ice.bbox_top
			instance_destroy();
		} else {
			make_dead(self);
		}
	} else {
		make_dead(other);
	}
}