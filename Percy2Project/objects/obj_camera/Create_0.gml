
width = camera_get_view_width(view_camera[0]);
height = camera_get_view_height(view_camera[0]);

target_object = self;

target_x = x;
target_y = y;

x_buff = 16;
y_buff = 8;

//application_surface_draw_enable(false)
gpu_set_tex_filter(false)

global.gui = surface_create(400, 240);
global.surfaceEnd = surface_create(400, 240);

global.CRT = true