
if visible_ != visible_last and visible_ == false {
	repeat((bbox_right-bbox_left)/8 + (bbox_bottom-bbox_top)/8)
		instance_create_layer(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), "META", obj_part_sparkle);
	play_sound(snd_powerup);
}