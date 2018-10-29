if place_meeting(x, y-2, obj_player) {
	draw_sprite(sprite_index, image_index, x+random_range(-(240-life)*0.01,(240-life)*0.01), y+random_range(-(240-life)*0.01,(240-life)*0.01))
	life--;
} else {
	draw_self();
}