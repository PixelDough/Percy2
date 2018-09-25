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

//check if on ground
if( place_free( x, y+1 )){
    velocity[1] += _grav; //set gravity - we are in the air!
	if ( _release_jump ) {
		if velocity[1] < 0 {
			velocity[1] *= 0.5;
		}
	}
} else {
    velocity[1] = 0; //no need for gravity on ground

    //we are on ground so we can check if we need to jump
    if( _do_jump and velocity[1] >= 0 ){
        velocity[1] = -sqrt(2 * _grav * _jump_speed);
	}
}

//set horizontal movement based on controls
velocity[0] = _speed;
if place_meeting(x+sign(velocity[0]), y, obj_solid) {
	velocity[0] = 0;
}

x+=velocity[0];
y+=velocity[1];