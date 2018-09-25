var _x_input = keyboard_check(vk_right) - keyboard_check(vk_left);

vel_x = clamp(vel_x + _x_input*0.05, -2, 2);

var _no_input = _x_input == 0;
var _turn = _x_input == -sign(vel_x) && !_no_input;
if _no_input || _turn {
	vel_x = lerp(vel_x, 0, 0.1);
	if _no_input {
		ACTION = PERCY.STAND;
	}
	if _turn {
		ACTION = PERCY.TURN;
	}
} else {
	
	ACTION = PERCY.WALK;
}

if vel_x != 0 {
	image_xscale = sign(vel_x);
}


x+=vel_x;
image_speed = abs(vel_x/2);


event_user(ACTION);