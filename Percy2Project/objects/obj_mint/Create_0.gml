sprites = [spr_mint, spr_mint_hard];
POWER = POWERS.ICE;
sprite_index = sprites[POWER-1];

spd = 0.05;
spd_mul = 1;


velocity_carry = [0, 0]

jh = 32

grounded = true;

dir = 1;
if instance_exists(obj_player) dir = sign(x - obj_player.x);
velocity = [0.5 * dir, 0];