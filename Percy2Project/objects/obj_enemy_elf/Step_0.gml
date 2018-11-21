/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if instance_exists(obj_player)
	image_xscale = sign(obj_player.x - x);

if velocity[0] != 0
	jump_dir = sign(velocity[0])