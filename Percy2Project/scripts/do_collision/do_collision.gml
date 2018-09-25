///@param does_wall_bounce
var _wall_bounce = argument0;

//Moving into a solid puts us back as if we never moved.
//This part allows us to move on slopes and fill the gaps.



if( (velocity[0] != 0 || velocity[1] != 0) and x == xprevious and y == yprevious ){

    //move up first if velocity[1] is up
    if( velocity[1] < 0 ){
        move_contact_solid( 90, -velocity[1] );
    }

    //move over if velocity[0] is not 0
    if( velocity[0] != 0 ){
        //setting some temporary vars
        var temp_y = y;
        //move up
        move_contact_solid( 90, abs( velocity[0] ));
        //move over
        move_contact_solid( 90 - sign( velocity[0] ) * 90, abs( velocity[0] ));
        //move down what we moved up
        if(temp_y-y != 0){
            move_contact_solid( 270, temp_y-y);
        }
        //move down again if it puts us on ground
        if( !place_free( x, y + abs( velocity[0] ) + 1 )){
            move_contact_solid( 270, abs( velocity[0] ));
        }
    }
    //move down if velocity[1] is down
    if( velocity[1] > 0 ){
        move_contact_solid( 270, velocity[1] );
    }
    //if we are blocked then set velocity[1] to 0
    if( !place_free( x, y + sign( velocity[1] ))){
		if velocity[1] > 0
			velocity[1] = 0;
		else {
			//velocity[1] = -velocity[1];
			velocity[1] = 0;
		}
    }
    //set velocity[0] to 0 if we can't move horizontally (we're blocked)
    if( velocity[0] != 0 and x == xprevious ){
        velocity[0] = 0;
    }
}