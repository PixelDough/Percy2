/// @description BLOCK HIT EVENT
// Inherit the parent event
event_inherited();

image_index++;
if image_index == image_number or (obj_player.POWER == POWERS.STRONG) {
	instance_destroy();
	play_sound(snd_blockBreak);
	//if place_meeting(x, y, obj_player) {
		//if obj_player.POWER != POWERS.STRONG 
			//obj_player.velocity[1] = 0
	//}
	for (var _i=0; _i<=3; _i++) { 
		var _part = instance_create_layer(bbox_left + (bbox_right-bbox_left)/2, bbox_top + (bbox_bottom-bbox_top)/2, "META", obj_part_iceCrumble);
		_part.direction = (90 * _i) + 45;
	}
}