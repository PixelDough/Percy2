if other.velocity[1] < 0 and other.bbox_top >= bbox_bottom {
	sprite_index = spr_block;
	//audio_play_sound(snd_blockBreak, 100, false);
	other.velocity[1] = 0;
	//for (var _i=0; _i<=3; _i++) { 
	//	var _part = instance_create_layer(bbox_left + (bbox_right-bbox_left)/2, bbox_top + (bbox_bottom-bbox_top)/2, "META", obj_part_iceCrumble);
	//	_part.direction = (90 * _i) + 45;
	//}
}