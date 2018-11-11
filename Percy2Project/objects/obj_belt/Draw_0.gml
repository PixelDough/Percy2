/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

var _width = bbox_right-bbox_left
for (var _x=0; _x<_width; _x+=16) {
	draw_sprite(sprite_index, image_index, x+_x, y);
}