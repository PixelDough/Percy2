if other.velocity[1] < 0 and other.bbox_top >= bbox_bottom {
	instance_destroy();
	other.velocity[1] = 0;
	for (var _i=0; _i<=3; _i++) { 
		var _part = instance_create_depth(bbox_left + (bbox_right-bbox_left)/2, bbox_top + (bbox_bottom-bbox_top)/2, -99999, obj_part_iceCrumble);
		_part.direction = (90 * _i) + 45;
	}
}