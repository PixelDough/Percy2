
var _l = instance_place_plus(x-16, y, obj_zone_water);
var _r = instance_place_plus(x+16, y, obj_zone_water);
var _u = instance_place_plus(x, y-16, obj_zone_water);
var _d = instance_place_plus(x, y+16, obj_zone_water);

if _l {
	if !instance_place_plus(x-16, y, obj_IceBlock)
		instance_create_layer(x-16, y, layer, obj_IceBlock);
}
if _r {
	if !instance_place_plus(x+16, y, obj_IceBlock)
		instance_create_layer(x+16, y, layer, obj_IceBlock);
}
if _u {
	if !instance_place_plus(x, y-16, obj_IceBlock)
		instance_create_layer(x, y-16, layer, obj_IceBlock);
}
if _d {
	if !instance_place_plus(x, y+16, obj_IceBlock)
		instance_create_layer(x, y+16, layer, obj_IceBlock);
}
