velocity[0] = 0;
velocity[1] += 0.15;

if sprite_index != spr_block sprite_index = spr_StarBlock;

y += velocity[1];

if y > ystart {
	y = ystart
	velocity[1] = 0;
}