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
	ICE
}

ACTION = PERCY.STAND;
POWER = POWERS.NONE;

spd = 0.05;
spd_mul = 1;

image_speed = 0;

velocity = [0, 0];
velocity_carry = [0, 0]

jh = 64

grounded = true;

current_room = instance_place(x, y, obj_room);