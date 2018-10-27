velocity[0] = 0;
velocity[1] += 0.15;

y += velocity[1];

if y > ystart {
	y = ystart
	velocity[1] = 0;
}