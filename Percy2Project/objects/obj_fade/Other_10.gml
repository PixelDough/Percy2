/// @description FADE OUT EVENT
with obj_camera {
	if instance_exists(target_object) {
		
		draw_set_circle_precision(64)
		var _surf = surface_create(camera_get_view_width(view_camera[0]), camera_get_view_height(view_camera[0]));

		surface_set_target(_surf);

		draw_set_color(c_black);
		draw_rectangle(-1, -1, room_width+1, room_height+1, false);

		gpu_set_blendenable(false)
		draw_set_alpha(0);
		draw_circle(target_object.x - (x-width/2), (target_object.bbox_top+(target_object.bbox_bottom-target_object.bbox_top)/2) - (y-height/2), circ_radius-1, false);
		gpu_set_blendenable(true)
		draw_set_alpha(1);
		
		surface_reset_target();

				
		if surface_exists(global.gui) {
			surface_set_target(global.gui);
				//var _bm = gpu_get_blendmode();
				//gpu_set_blendmode(bm_subtract);
				draw_surface(_surf, 0, 0);
				//gpu_set_blendmode(_bm);
			surface_reset_target();
		}


		surface_free(_surf);
	
		input.enabled = false;
		
		if circ_radius < 1 {
			if !audio_is_playing(other.music) {
				audio_stop_all();
			}
			play_sound(snd_fadeIn);
			other.ACTION = CIRC_FADE.IN;
			circ_radius = 1;
			if !room_exists(other.target) other.target = room;
			room_goto(other.target);
		}

		circ_radius*=0.9;
	}
}