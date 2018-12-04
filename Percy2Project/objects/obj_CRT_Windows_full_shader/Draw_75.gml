surface_width  = (floor(display_get_gui_width()/400)*400)	*2;
surface_height = (floor(display_get_gui_height()/240)*240)	*2;

surface_scale_x = floor(display_get_gui_width()/400);
surface_scale_y = floor(display_get_gui_height()/240);

crt_surface_width  = display_get_gui_width() * surface_scale_x;
crt_surface_height = display_get_gui_height() * surface_scale_y;

shader_set(shader_to_use);
  shader_set_uniform_f(uni_crt_sizes, surface_width, surface_height,crt_surface_width, crt_surface_height);
  shader_set_uniform_f(distort, var_distort);
  shader_set_uniform_f(distortion, var_distortion_ammount);
  shader_set_uniform_f(border, var_border);
  draw_surface_part_ext(global.surfaceEnd, 0, 0, view_wport[0], view_hport[0], 0, 0, surface_scale_x, surface_scale_y, c_white, 1);
shader_reset();



