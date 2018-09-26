if instance_exists(obj_player) {
	target_x = lerp(target_x, obj_player.x + (16 * sign(obj_player.image_xscale)), 0.1);
	target_y = height/2//obj_player.y;
}

x = target_x;
y = target_y;

camera_set_view_pos(view_camera[0], x - width/2, y - height/2);