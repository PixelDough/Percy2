var _x_input = keyboard_check(vk_right) - keyboard_check(vk_left);

velocity[0] = clamp(velocity[0] + _x_input*0.05, -2, 2);

var _no_input = _x_input == 0;
var _turn = _x_input == -sign(velocity[0]) && !_no_input;
if _no_input || _turn {
	velocity[0] = lerp(velocity[0], 0, 0.1);
	if _no_input {
		ACTION = PERCY.STAND;
	}
	if _turn {
		ACTION = PERCY.TURN;
	}
} else {
	
	ACTION = PERCY.WALK;
}

if velocity[0] != 0 {
	image_xscale = sign(velocity[0]);
}


//x+=velocity[0];
image_speed = abs(velocity[0]/2);


event_user(ACTION);

do_physics(input.action_one_pressed, jh, _x_input, velocity[0], 0.1);
