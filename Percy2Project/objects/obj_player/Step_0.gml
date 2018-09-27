var _x_input = keyboard_check(vk_right) - keyboard_check(vk_left);

grounded = place_meeting(x, y+1, obj_solid);

velocity[0] = clamp(velocity[0] + _x_input*0.05, -2*spd_mul, 2*spd_mul);

var _no_input = _x_input == 0;
var _turn = _x_input == -sign(velocity[0]) && !_no_input;
if (_no_input || _turn) {
	velocity[0] = lerp(velocity[0], 0, 0.15);
	if grounded {
		if _no_input {
			change_action(PERCY.STAND, true);
		}
		if _turn {
			change_action(PERCY.TURN, true);
		}
	}
} else {
	if ACTION != PERCY.WALK {
		change_action(PERCY.WALK, true);
	}
}

//if velocity[0] != 0 {
//	image_xscale = sign(velocity[0]);
//}
if _x_input != 0 {
	image_xscale = sign(_x_input);
}

if !grounded change_action(PERCY.JUMP, true);

//x+=velocity[0];
image_speed = abs(velocity[0]);


event_user(ACTION);

do_physics(input.action_one_pressed, input.action_one_released, jh, _x_input, velocity[0], 0.15);
collide();