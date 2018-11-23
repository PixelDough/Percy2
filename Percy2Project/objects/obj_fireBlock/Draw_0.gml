/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if fire_time < 240 {
	image_index = 0;
} else if fire_time >= 300 and fire_time < 360 {
	image_index = 2;
	gpu_set_fog(true, c_black, 0, 1);
	draw_sprite(spr_enemy_fire, sprite_get_index_time(spr_enemy_fire, global.time), (x + sprite_width/2) + 1, bbox_top+1)
	gpu_set_fog(false, c_black, 0, 1);
	draw_sprite(spr_enemy_fire, sprite_get_index_time(spr_enemy_fire, global.time), x + sprite_width/2, bbox_top)
	
	if collision_rectangle(x+2, bbox_top-24, bbox_right-3, bbox_top, obj_player, false, true) {
		with obj_player {
			event_user(DIE);
		}
	}
	
} else if fire_time >= 360 {
	fire_time = 0;
}
