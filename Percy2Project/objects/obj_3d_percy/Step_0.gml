/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

image_index = floor(obj_3d_gameWorld.image_angle/45);
image_index = round(point_direction(x, y, obj_3d_gameWorld.x, obj_3d_gameWorld.y)/45)-2;