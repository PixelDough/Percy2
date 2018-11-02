
if other.velocity[1] > 0 and other.bbox_bottom < bbox_bottom { 
	if image_speed == 0 {
		with other {
			velocity[1] = -sqrt(2 * grav * jh)
		}
		audio_play_sound(snd_pop, 100, false);
		image_speed = 1;
	}
}