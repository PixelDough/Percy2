make_mover(0, 0, 1, 0.2, 1.5, 0.9, 3.75, 3, 0.15, true);
enum player {
	idle,
	walk,
	attack,
	die,
}

invincibleMax = 90;
invincible = invincibleMax;

startx = x;
starty = y;
snowball = noone;
ACTION = player.idle;

player_number = 0;

snowball_type = noone//obj_snowball_percy;