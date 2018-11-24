if global.paused exit;

make_platform(obj_platform)
grounded = instance_place_plus(x, y+1, obj_solid);

water_to_ice(true)

//if velocity[0] != 0 {
//	image_xscale = sign(velocity[0]);
//}
if velocity[0] != 0 {
	image_xscale = sign(velocity[0]);
}

var _hit = instance_place_plus(x+sign(velocity[0]), y, obj_solid);
if _hit 
	if _hit.solid_
		velocity[0] *= -1;
do_physics(grounded, false, jh, dir, velocity[0], 0.05);
velocity = collide(velocity);

if global.time % 5 == 0 instance_create_depth(bbox_left+random_range(0, bbox_right-bbox_left), bbox_top+random_range(0, bbox_bottom-bbox_top), depth+1, obj_part_sparkle);
