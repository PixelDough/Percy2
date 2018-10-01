if !surface_exists(surface) surface = surface_create(camera_get_view_width(view_camera[0]), camera_get_view_height(view_camera[0]));

surface_set_target(surface);
gpu_set_fog(true, c_black, 0, 1);
draw_tilemap(layer_tilemap_get_id(layer_get_id("TilesBG")), 1-camera_get_view_x(view_camera[0]), 1-camera_get_view_y(view_camera[0]));
draw_tilemap(layer_tilemap_get_id(layer_get_id("Collisions")), 1-camera_get_view_x(view_camera[0]), 1-camera_get_view_y(view_camera[0]));
gpu_set_fog(false, c_black, 0, 1);

surface_reset_target();

if surface_exists(surface) draw_surface(surface, camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]));