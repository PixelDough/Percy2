/// @description BLOCK HIT EVENT
// Inherit the parent event
event_inherited();

image_index++;
if image_index == image_number or (obj_player.POWER == POWERS.STRONG) {
	//if place_meeting(x, y, obj_player) {
		//if obj_player.POWER != POWERS.STRONG 
			//obj_player.velocity[1] = 0
	//}
	ice_crumble();
	var _bell = instance_create_layer(x+sprite_width/2, y+sprite_height/2, "Instances", obj_jingleBell_grav);
	_bell.velocity[1] = -2;
	instance_destroy();
}