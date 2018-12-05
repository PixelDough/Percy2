//circ_radius++;

var _light_float = sin(global.time/5);

if instance_exists(target_object) {
	if circ_radius < width {
		draw_set_circle_precision(64)
		var _surf = surface_create(width, height);

		surface_set_target(_surf);

		draw_set_color(c_black);
		draw_rectangle(-1, -1, room_width+1, room_height+1, false);

		gpu_set_blendenable(false)
		draw_set_alpha(0);
		draw_circle(target_object.x - (x-width/2), (target_object.bbox_top+(target_object.bbox_bottom-target_object.bbox_top)/2) - (y-height/2), circ_radius-1+_light_float, false);
		
		with obj_lamp {
			draw_circle(x - (other.x-other.width/2), y - (other.y-other.height/2), 32+_light_float, false);
		}
		
		gpu_set_blendenable(true)
		draw_set_alpha(1);
		
		surface_reset_target();

				
		if surface_exists(global.gui) {
			surface_set_target(application_surface);
				//var _bm = gpu_get_blendmode();
				//gpu_set_blendmode(bm_subtract);
				draw_surface(_surf, 0, 0);
				//gpu_set_blendmode(_bm);
			surface_reset_target();
		}


		surface_free(_surf);
	}
		
}