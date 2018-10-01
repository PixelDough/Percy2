

if instance_place(x+(velocity[0]), y, obj_solid) velocity[0] *= -1;



if velocity[0] != 0 image_xscale = sign(velocity[0]);

event_inherited()