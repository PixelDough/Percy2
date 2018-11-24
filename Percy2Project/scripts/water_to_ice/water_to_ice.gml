///@arg make_ice

var _make_ice = argument0;

var _water_to_ground = instance_place_plus(x, y+9+velocity[1], obj_zone_water)
if _water_to_ground {
	if _make_ice and (!instance_place_plus(x+velocity[0], bbox_bottom+2+velocity[1], obj_solid) and !instance_place_plus(x+velocity[0], bbox_bottom+2+velocity[1], obj_platform)) and y <= _water_to_ground.bbox_top-8 and velocity[1] >= 0 instance_create_layer(floor((x+velocity[0])/16)*16, _water_to_ground.y-8, "Instances", obj_iceBlock_break)
}