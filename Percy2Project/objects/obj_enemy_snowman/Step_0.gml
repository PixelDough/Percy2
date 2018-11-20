/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event

event_inherited();
if !ENABLED exit;

make_platform(obj_platform);
if !instance_place_plus(x+(sign(velocity[0])*(bbox_right-bbox_left)), y+1, obj_solid) {
	velocity[0] *= -1;
}