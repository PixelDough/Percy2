if instance_place(x+(velocity[0]), y, obj_solid) velocity[0] *= -1;

if velocity[0] != 0 image_xscale = sign(velocity[0]);



var _water_float = 1;
//if is_in_water _water_float = 0.5;
do_physics(false, false, 0, sign(velocity[0]), velocity[0], grav);
velocity = collide(velocity);

event_inherited()