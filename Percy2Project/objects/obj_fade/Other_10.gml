/// @description FADE OUT EVENT
with obj_camera {
	if instance_exists(target_object) {
		if circ_radius > 1 {
			draw_set_circle_precision(64)
			var _surf = surface_create(camera_get_view_width(view_camera[0]), camera_get_view_height(view_camera[0]));

			surface_set_target(_surf);

			draw_set_color(c_white);
			draw_rectangle(-1, -1, room_width+1, room_height+1, false);
			draw_set_color(c_black);
			draw_circle(target_object.x - (x-width/2), (target_object.bbox_top+(target_object.bbox_bottom-target_object.bbox_top)/2) - (y-height/2), circ_radius-1, false);

			surface_reset_target();

			var _bm = gpu_get_blendmode();
			gpu_set_blendmode(bm_subtract);

			draw_surface(_surf, 0, 0);

			gpu_set_blendmode(_bm);

			surface_free(_surf);
	
			input.enabled = false;
		} else {
			room_goto(other.target);
			other.ACTION = CIRC_FADE.IN;
		}

		circ_radius*=0.9;
	}
}