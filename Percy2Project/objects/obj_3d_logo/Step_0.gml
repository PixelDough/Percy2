
if y >= ystart {
	y = ystart;
	if abs(velocity[1]) < 1 {
		velocity[0] = 0;
	} else {
		velocity[1] *= -0.5;
	}
} else
	velocity[1] += 0.15;

y+=velocity[1];


shine_pos+=5;