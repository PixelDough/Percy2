var _x_input = input.r - input.l
var _y_input = input.d - input.u

if _x_input != 0
	velocity[0] += (_x_input) * spd;
else
	velocity[0] = lerp(velocity[0], 0, spd);

if _y_input != 0
	velocity[1] += (_y_input) * spd;
else
	velocity[1] = lerp(velocity[1], 0, spd);

velocity[0] = clamp(velocity[0], -spd_max, spd_max);
velocity[1] = clamp(velocity[1], -spd_max, spd_max);


x+=velocity[0];
y+=velocity[1];