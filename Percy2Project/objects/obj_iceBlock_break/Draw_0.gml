
if alarm[1] > 30 {
	draw_shadow(1);
	draw_self();
} else {
	var _x_off = irandom_range(-1, 1);
	var _y_off = irandom_range(-1, 1);
	x+=_x_off
	y+=_y_off
	draw_shadow(1);
	x=xstart;
	y=ystart;
	draw_sprite(sprite_index, image_index, x+_x_off, y+_y_off);
}