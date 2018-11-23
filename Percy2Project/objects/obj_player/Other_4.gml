event_inherited();

image_speed = 0;

velocity = [0, 0];
velocity_carry = [0, 0]

jh = 64;
jump_time = 15;

holding_present = false;
present = noone;

grounded = true;
grav = 0.15;
current_room = instance_place(x, y, obj_room);

if sprite_index == spr_percy_in sprite_index = spr_percy_out;

//with obj_player {
//	if id != other instance_destroy();
//}