make_platform(obj_platform)

current_room = instance_place(x, y, obj_room);

var _x_input = input.r - input.l;
var _crouch = input.d or (ACTION == PERCY.CROUCH and place_meeting(x, y-8, obj_solid));

var _water_hit = instance_place(x, y, obj_zone_water)
if _water_hit {
	if !is_in_water {
		is_in_water = true;
		if bbox_top < _water_hit.bbox_top
			instance_create_depth(x, _water_hit.bbox_top, depth+1, obj_splash);
	}
} else {
	if is_in_water {
		is_in_water = false;
		//instance_create_depth(x, _water_hit.bbox_top, depth+1, obj_splash);
	}
}

// Determine if on ground
grounded = false;
var _y_hit = ds_list_create();
var _y_hit_solid = false;
instance_place_list(x, y+1, obj_solid, _y_hit, true);
for (var _i=0; _i<ds_list_size(_y_hit); _i++) {
	if instance_exists(_y_hit[|_i]) {
		if (object_is_ancestor(_y_hit[|_i].object_index, obj_solid) or _y_hit[|_i].object_index == obj_solid){
			if _y_hit[|_i].solid_ grounded = true;
		}
	}
}
ds_list_destroy(_y_hit)

// Jump buffer time, to help with platforming
if velocity[1] < 0 {
	jump_time = 0;
}
if grounded {
	jump_time = 10;
} else {
	jump_time--;
}


// Crouch
if _crouch {
	if grounded
		_x_input = 0;
	change_action(PERCY.CROUCH, false);
	//sprite_index = spr_percy_down;
}

// Clamp player speed
velocity[0] = clamp(velocity[0] + _x_input*0.05, -2*spd_mul, 2*spd_mul);


var _no_input = _x_input == 0 and grounded;
var _turn = _x_input == -sign(velocity[0]) && !_no_input;
if (_no_input || _turn) and !(_crouch and abs(velocity[0]) >= 3) {
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

if _x_input != 0 {
	image_xscale = sign(_x_input);
}

image_speed = abs(velocity[0]/(4));

event_user(ACTION);

var _do_physics = true;
if present {
	if !present.is_lifted {
		_do_physics = false;
	}
}
if _do_physics {
	//make_platform(obj_platform)
	var _float = 1
	if POWER == POWERS.FLOAT _float = 0.75
	var _water_float = 1;
	if is_in_water _water_float = 0.5;
	do_physics(input.action_one_pressed && (jump_time > 0 || is_in_water), input.action_one_released, (jh/_float)*_water_float, _x_input*_water_float, velocity[0], grav*_float);
	velocity = collide(velocity);
}

percy_present();