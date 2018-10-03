enum PERCY {
	STAND,
	WALK,
	RUN,
	TURN,
	JUMP,
	CROUCH
}

enum POWERS {
	NONE,
	ICE,
	STRONG
}

ACTION = PERCY.STAND;
POWER = POWERS.NONE;

spd = 0.05;
spd_mul = 1;

image_speed = 0;

velocity = [0, 0];
velocity_carry = [0, 0]

jh = 64;

holding_present = false;
present = noone;

grounded = true;

current_room = instance_place(x, y, obj_room);