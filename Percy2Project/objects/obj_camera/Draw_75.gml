var _surf = surface_create(camera_get_view_width(view_camera[0]), camera_get_view_height(view_camera[0]));

surface_set_target(_surf);

draw_set_color(c_white);
draw_rectangle(0, 0, room_width, room_height, false);
draw_set_color(c_black);
draw_circle(target_object.x - (x-width/2), target_object.y - (y-height/2), 64, false);

surface_reset_target();

var _bm = gpu_get_blendmode();
gpu_set_blendmode(bm_subtract);

draw_surface(_surf, 0, 0);

gpu_set_blendmode(_bm);

surface_free(_surf);