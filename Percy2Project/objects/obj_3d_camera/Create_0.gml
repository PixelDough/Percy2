
// Setup 

gpu_set_ztestenable(true);
gpu_set_zwriteenable(true);
gpu_set_alphatestenable(true);
layer_force_draw_depth(true, 0);

// Camera

view_enabled = true;
view_set_visible(0, true);

camera = camera_create();

//camera_set_view_size(camera, 400, 240)

projection_matrix = matrix_build_projection_perspective_fov(45, 400/240, 1, 32000);
//projection_matrix = matrix_build_projection_ortho(400, 240, 1, 32000);

camera_set_proj_mat(camera, projection_matrix);

view_set_camera(0, camera);

pitch = 0;
direction = 0;
z = -32;

camera_set_update_script(camera, camera_update);

spd = 2;