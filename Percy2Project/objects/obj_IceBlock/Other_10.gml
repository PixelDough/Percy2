/// @description BLOCK HIT EVENT
// Inherit the parent event
event_inherited();

if (object_index == obj_IceBlockBig and obj_player.POWER == POWERS.STRONG) or (object_index != obj_IceBlockBig) {
	instance_destroy();
	audio_play_sound(snd_blockBreak, 100, false);
	//if place_meeting(x, y, obj_player) {
		//if obj_player.POWER != POWERS.STRONG 
			//obj_player.velocity[1] = 0
	//}
	for (var _i=0; _i<=3; _i++) { 
		var _part = instance_create_layer(bbox_left + (bbox_right-bbox_left)/2, bbox_top + (bbox_bottom-bbox_top)/2, "META", obj_part_iceCrumble);
		_part.direction = (90 * _i) + 45;
	}
}