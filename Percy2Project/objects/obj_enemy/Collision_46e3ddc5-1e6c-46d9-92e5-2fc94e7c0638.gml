
if !ENABLED exit;

if other.WAND_TIME <= 0 {
	if other.velocity[1] > 0 or other.y+other.velocity[1] <= bbox_top+4 { 
	
		with other {
			y = other.bbox_top;
			if POWER == POWERS.ICE {
				var _ice = instance_create_layer(round(other.bbox_left/16)*16, round(other.bbox_top/16)*16, "Instances", obj_IceBlock);
				y = _ice.bbox_top
				instance_destroy(other);
			} else {
				make_dead(other);
				velocity[1] = -sqrt(2 * grav * jh)
			}
		}
		audio_play_sound(snd_pop, 100, false);
	} else {
		with obj_player {
			event_user(DIE);
		}
	}
} else {
	make_dead(self);
}