//audio_play_sound(snd_coin, 100, false);
for (var _i=0; _i<16; _i++) {
	with other {
		var _part = instance_create_depth(bbox_left + 0.5*(bbox_right - bbox_left) +random_range(-16, 16), bbox_top+ 0.5*(bbox_bottom-bbox_top) +random_range(-16, 16), depth-1, obj_part)
	}
	_part.sprite_index = spr_particle_poof;
}
audio_play_sound(snd_powerup, 100, false);
other.POWER = POWER;
//sleep((audio_sound_length(snd_powerup)/2)*1000)
instance_deactivate_object(self);