//draw_self();
if obj_game.alarm[0] > 60 {
	draw_self();
} else {
	draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, c_white, obj_game.alarm[0]%2);
}

if obj_game.alarm[0] <= 0 {
	draw_self();
}