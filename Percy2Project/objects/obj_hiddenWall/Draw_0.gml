
for (var _x=bbox_left; _x<bbox_right; _x+=16) {
	for (var _y=bbox_top; _y<bbox_bottom; _y+=16) {
		
		draw_sprite(sprite_index, image_index, _x, _y);
		
	}
}