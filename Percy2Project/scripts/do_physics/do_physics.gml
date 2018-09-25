///@arg do_jump
///@arg jump_height
///@arg dir
///@arg speed
///@arg grav

var _do_jump = argument0;
var _jump_speed = argument1;
var _dir = argument2;
var _speed = argument3;
var _grav = argument4;

//check if on ground
if( place_free( x, y+1 )){
    gravity = _grav; //set gravity - we are in the air!
	if ( !_do_jump ) {
		if vspeed < 0 {
			vspeed *= 0.9;
		}
	}
} else {
    gravity = 0; //no need for gravity on ground

    //we are on ground so we can check if we need to jump
    if( _do_jump and vspeed >= 0 ){
        vspeed = -sqrt(2 * _grav * _jump_speed);
	}
}

//set horizontal movement based on controls
if( _dir == 0 ) {
    hspeed = 0
} else {
    hspeed = _speed * _dir;
}
