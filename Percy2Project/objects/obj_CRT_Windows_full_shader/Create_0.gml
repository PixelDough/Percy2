//draw_set_font(font0);

application_surface_draw_enable(false);

shader_to_use = sh_CRT_Windows_full_shader;

crt_surface_scale = 4;

crt_surface_width  = display_get_gui_width() * crt_surface_scale;
crt_surface_height = display_get_gui_height() * crt_surface_scale;

uni_crt_sizes = shader_get_uniform(shader_to_use, "u_crt_sizes");
distort = shader_get_uniform(shader_to_use, "distort");
distortion = shader_get_uniform(shader_to_use, "distortion");
border = shader_get_uniform(shader_to_use, "border");

var_distort = false;
var_distortion_ammount = 0.12;
var_border = true;

surface_width  = (floor(display_get_gui_width()/400)*400)	*2;
surface_height = (floor(display_get_gui_height()/240)*240)	*2;

//surface_resize(application_surface, surface_width, surface_height);

