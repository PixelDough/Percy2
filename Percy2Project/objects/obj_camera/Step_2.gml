if instance_exists(obj_player) {
	//target_x = lerp(target_x, obj_player.x + (16 * sign(obj_player.image_xscale)), 0.1);
	//target_x = obj_player.x;
	
	while(!place_meeting(target_x, obj_player.y, obj_player)) {
		target_x += sign(obj_player.x - target_x);
	}
	while(!place_meeting(obj_player.x, target_y, obj_player)) {
		target_y += sign(obj_player.y - target_y);
	}
	
	//if obj_player.grounded {
	//	if (!place_meeting(obj_player.x, target_y, obj_player)) {
	//		target_y += 2 * sign(obj_player.y - target_y) //obj_player.y;
	//	} 
	//} else {
	//	if (abs(obj_player.y - target_y) > 64) {
	//		target_y += obj_player.velocity[1];
	//	}
	//}
	
	//target_x = obj_player.x;
	//target_y = obj_player.y;
}

target_x = clamp(target_x, width/2, room_width-width/2);
target_y = clamp(target_y, height/2, room_height-height/2);

x = target_x;
y = target_y;

camera_set_view_pos(view_camera[0], x - width/2, y - height/2);