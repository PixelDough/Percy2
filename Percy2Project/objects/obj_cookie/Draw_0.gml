event_inherited();
if instance_exists(obj_player) and active {
	if place_meeting(x, y-2, obj_player) and obj_player.y <= bbox_top {
		draw_sprite(sprite_index, image_index, x+random_range(-1,1), y+random_range(-1,1))
		image_speed = 1;
	} else {
		draw_self();
		image_speed = 0;
	}
} else {
	draw_self();
}