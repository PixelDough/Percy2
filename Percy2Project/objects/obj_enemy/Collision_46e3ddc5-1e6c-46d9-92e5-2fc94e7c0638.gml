
if !ENABLED exit;

if other.WAND_TIME <= 0 {
	if (other.velocity[1] > 0 and other.bbox_bottom < bbox_bottom) { 
	
		with other {
			y = other.bbox_top;
			if POWER == POWERS.ICE {
				var _ice = instance_create_layer(round(other.bbox_left/16)*16, round(other.bbox_top/16)*16, "Instances", obj_IceBlock);
				y = _ice.bbox_top
				instance_destroy(other);
			} else {
				make_dead(other);
				if input.action_one
					velocity[1] = -sqrt(2 * grav * jh)
				else
					velocity[1] = -sqrt(2 * grav * jh/4)
			}
		}
		audio_play_sound(snd_pop, 100, false);
	} else {
		with obj_player {
			if HIT_TIME <= 0 {
				if POWER == POWERS.NONE {
					event_user(DIE);
				} else {
					HIT_TIME = 120;
					POWER = POWERS.NONE;
					play_sound(snd_hurt);
				}
			}
		}
	}
}

if other.WAND_TIME > 0 {
	make_dead(self);
}