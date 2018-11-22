
if visible != visible_last and visible == false {
	repeat((bbox_right-bbox_left)/8 + (bbox_bottom-bbox_top)/8)
		instance_create_depth(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), depth, obj_part_sparkle);
}