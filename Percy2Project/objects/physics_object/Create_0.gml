event_inherited()
is_in_water = false;
velocity = [0, 0]
grav = 0.15;

spd = 0.05;
spd_mul = 1;

velocity_carry = [0, 0]

jh = 32

grounded = true;

dir = 1;

if instance_exists(obj_player) dir = sign(x - obj_player.x);

velocity = [0.5 * dir, 0];

ENABLED = true;