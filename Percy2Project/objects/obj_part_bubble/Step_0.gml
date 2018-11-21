
if instance_position(x, y, obj_zone_water) {
	//x += velocity[0];
	x = xstart + sin(global.time/10)*2
	y += velocity[1];
} else {
	instance_destroy();
}