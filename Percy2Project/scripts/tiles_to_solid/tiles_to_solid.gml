///@param layer_name_or_id

var _layer = is_string(argument0) ? layer_get_id(argument0) : argument0;
var _tilemap = layer_tilemap_get_id(_layer);

for (var _x=0; _x<room_width; _x+=16) {
	for (var _y=0; _y<room_height; _y+=16) {
		if tilemap_get_at_pixel(_tilemap, _x, _y) {
			if !tilemap_get_at_pixel(_tilemap, _x-16, _y) || !tilemap_get_at_pixel(_tilemap, _x+16, _y) ||
			!tilemap_get_at_pixel(_tilemap, _x, _y-16) || !tilemap_get_at_pixel(_tilemap, _x, _y+16) {
				instance_create_layer(_x, _y, "Instances", obj_solid);
			}
		}
	}
}

for (var _y=-16; _y<room_height; _y+=16) {
	instance_create_layer(-16, _y, "Instances", obj_solid);
	instance_create_layer(room_width, _y, "Instances", obj_solid);
}
