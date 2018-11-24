/// @description Insert description here
// You can write your code in this editor
if global.paused exit;
event_inherited();
if velocity[1] < 0 and ACTION == ELF.JUMP {
	var _x = x-(image_xscale*13);
	var _y =  y-12-4;
	
	gpu_set_fog(true, c_black, 0, 1);
	draw_sprite_ext(spr_enemy_hammer, 0, _x+1, _y+1, image_xscale, 1, 0, c_white, 100);
	gpu_set_fog(false, c_black, 0, 1);
	draw_sprite_ext(spr_enemy_hammer, 0, _x, _y, image_xscale, 1, 0, c_white, 100);
}