
if instance_exists(obj_3d_gameWorld) {
	var _map = obj_3d_gameWorld;
	draw_sprite(spr_map_cursor, 0, _map.x+(mouse_x-_map.x), _map.y + (mouse_y-_map.y)*0.4)
}