/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if instance_exists(obj_player) {
	solid_ = false
	if obj_player.bbox_top > bbox_bottom or sprite_index == spr_block solid_ = true;
}
if sprite_index != spr_block {
	visible = false;
} else {
	visible = true;
}