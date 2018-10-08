///@param distance

var _dist = argument0;

if sprite_index != noone {
	gpu_set_fog(true, c_black, 0, 1);
	draw_sprite_ext(sprite_index, image_index, x+_dist, y+_dist, image_xscale, image_yscale, image_angle, c_black, 100);
	gpu_set_fog(false, c_black, 0, 1);
}