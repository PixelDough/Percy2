velocity[1] += 0.15;
if y > ystart {
	y = ystart;
	velocity[1] *= -0.5;
}

if abs(velocity[1]) < 1 velocity[0] = 0;

y+=velocity[1];