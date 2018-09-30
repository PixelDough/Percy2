current_room = instance_place(x, y, obj_room);

var _x_input = input.r - input.l;
var _crouch = input.d or (ACTION == PERCY.CROUCH and place_meeting(x, y-8, obj_solid));

grounded = place_meeting(x, y+1, obj_solid);

if _crouch {
	if grounded
		_x_input = 0;
	change_action(PERCY.CROUCH, false);
	//sprite_index = spr_percy_down;
}

velocity[0] = clamp(velocity[0] + _x_input*0.05, -2*spd_mul, 2*spd_mul);

var _no_input = _x_input == 0 and grounded;
var _turn = _x_input == -sign(velocity[0]) && !_no_input;
if (_no_input || _turn) {
	velocity[0] = lerp(velocity[0], 0, 0.15 / (_crouch * 2 + 1));
	if grounded and !_crouch {
		if _no_input {
			change_action(PERCY.STAND, true);
		}
		if _turn {
			change_action(PERCY.TURN, true);
		}
	}
} else {
	if ACTION != PERCY.WALK and !_crouch {
		change_action(PERCY.WALK, true);
	}
}

if !grounded and !_crouch change_action(PERCY.JUMP, true);

//if velocity[0] != 0 {
//	image_xscale = sign(velocity[0]);
//}
if _x_input != 0 {
	image_xscale = sign(_x_input);
}

//x+=velocity[0];
image_speed = abs(velocity[0]/(4));

event_user(ACTION);

var _final_velocity = [velocity[0] + velocity_carry[0], velocity[1] + velocity_carry[1]];

do_physics(input.action_one_pressed, input.action_one_released, jh, _x_input, velocity[0], 0.15);
velocity = collide(velocity);


