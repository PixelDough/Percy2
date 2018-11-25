///@arg do_jump
///@param release_jump
///@arg jump_height
///@arg dir
///@arg speed
///@arg grav

var _do_jump = argument0;
var _release_jump = argument1;
var _jump_speed = argument2;
var _dir = argument3;
var _speed = argument4;
var _grav = argument5;

//if abs(velocity[0]) > 0 {
//	if place_meeting(x, y+velocity[1], obj_solid) {
//		//var _hit = instance_place(x, y+velocity[1], obj_solid)
//		while !place_meeting(x, y+sign(velocity[1]), obj_solid) {
//			y+=sign(velocity[1]);
//		}
//		//if velocity[1] < 0 and bbox_top >= _hit.bbox_bottom
//		//	_hit.hit = true;
//		//velocity[1] = 0;
//	}
//}

var _x_diff = x-xprevious;
var _y_diff = y-yprevious;
//while (position_meeting(bbox_left, y, obj_solid) and position_meeting(bbox_right, y, obj_solid)) and (position_meeting(x, bbox_top, obj_solid) and position_meeting(x, bbox_bottom, obj_solid)) {
//	y--;
//}

//check if on ground
var _y_hit = ds_list_create();
var _y_hit_solid = false;
instance_place_list(x, y+1, obj_solid, _y_hit, true);
for (var _i=0; _i<ds_list_size(_y_hit); _i++) {
	if instance_exists(_y_hit[|_i]) {
		if (object_is_ancestor(_y_hit[|_i].object_index, obj_solid) or _y_hit[|_i].object_index == obj_solid){
			if _y_hit[|_i].solid_ _y_hit_solid = true;
		}
	}
}
ds_list_destroy(_y_hit)

//var _platform = instance_place_plus(x, y+1, obj_platform);
//if _platform {
//	if _platform.solid_ _y_hit_solid = true;
//}
	
//var _y_hit = instance_place( x, y+1, obj_solid )

//if _y_hit {
//	if _y_hit.solid_ _y_hit_solid = true;
//}
if !_y_hit_solid and !_do_jump and !grounded {
    //set gravity - we are in the air!
	if velocity[1] > 0 {
		_grav*=2;
	}
	velocity[1] += _grav; 
	if ( _release_jump){// and velocity[1]*0.35 < -0.5) {
		if velocity[1]*0.35 < 0 {
			velocity[1] *= 0.35;
		}
	}
} else {
    velocity[1] = 0; //no need for gravity on ground
	if( _do_jump ){
	    velocity[1] = -sqrt(2 * _grav * _jump_speed);
		if self == obj_player
			play_sound(snd_jump);
	}
}
//we are on ground so we can check if we need to jump


//y+=velocity[1];

//set horizontal movement based on controls
velocity[0] = _speed;
//var _x_hit = instance_place(x+(velocity[0]), y, obj_solid);
var _x_hit = ds_list_create();
var _x_hit_solid = false;
instance_place_list(x+velocity[0], y, obj_solid, _x_hit, true);
for (var _i=0; _i<ds_list_size(_x_hit); _i++) {
	if instance_exists(_x_hit[|_i]) {
		if (object_is_ancestor(_x_hit[|_i].object_index, obj_solid) or _x_hit[|_i].object_index == obj_solid){
			if _x_hit[|_i].solid_ {
				if velocity[0] != 0 {
					//while !place_meeting(x+sign(velocity[0]), y, _x_hit[|_i]) {
					//	x+=sign(velocity[0]);
					//}
					velocity[0] = 0;
				}
			}
		}
	}
}

if _x_hit_solid {
	if _x_hit.solid_ {
		
	}
}
ds_list_destroy(_x_hit)

//x+=velocity[0];
