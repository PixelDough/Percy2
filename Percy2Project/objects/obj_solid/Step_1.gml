if block_hit() {
	var _hit = true;
	var _dist = point_distance(obj_player.x, obj_player.bbox_top, x+sprite_width/2, y+sprite_height/2);
	with all {
		if object_is_ancestor(object_index, obj_solid) {
			if _dist > point_distance(obj_player.x, obj_player.bbox_top, x+sprite_width/2, y+sprite_height/2) {
				_hit = false
			}
		
			//if (floor(x/16)*16 == floor(obj_player.x/16)*16) and (floor(y/16)*16 == floor((obj_player.y-obj_player.sprite_yoffset)/16)*16) {
			//	instance_destroy();
			//	audio_play_sound(snd_blockBreak, 100, false);
			//	obj_player.velocity[1] = 0;
			//	for (var _i=0; _i<=3; _i++) { 
			//		var _part = instance_create_layer(bbox_left + (bbox_right-bbox_left)/2, bbox_top + (bbox_bottom-bbox_top)/2, "META", obj_part_iceCrumble);
			//		_part.direction = (90 * _i) + 45;
			//	}
			
			//} else {
			//	show_debug_message("X: " + string(floor(x/16)*16) + " - " + string(floor(obj_player.x/16)*16));
			//	show_debug_message("Y: " + string(floor(y/16)*16) + " - " + string(floor((obj_player.y-obj_player.sprite_yoffset)/16)*16));
			
			//}
		
		}
	
	}
	if _hit event_user(0);
}

x += velocity[0];
y += velocity[1];


if (instance_place(x, y-2, obj_player)){
	if ceil(obj_player.bbox_bottom) <= ceil(bbox_top) {
		obj_player.y = ceil(bbox_top);
		//obj_player.x += velocity[0]
		with obj_player {
			collide([other.velocity[0],0]);
		}
	}
	move_push(obj_player)
	//if obj_player.bbox_right > bbox_left and obj_player.bbox_right < bbox_right {
	//	obj_player.x = bbox_left-(obj_player.bbox_right - obj_player.bbox_left)
	//} else if obj_player.bbox_left < bbox_right and obj_player.bbox_left > bbox_left {
	//	obj_player.x = bbox_right+(obj_player.bbox_right - obj_player.bbox_left)
	//} else {
		
	//}
}

