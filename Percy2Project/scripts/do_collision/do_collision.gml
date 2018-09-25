///Collision Correction
///@arg does_wall_bounce

var _wall_bounce = argument0;

//Moving into a solid puts us back as if we never moved.
//This part allows us to move on slopes and fill the gaps.



if( speed != 0 and x == xprevious and y == yprevious ){

    //move up first if vspeed is up
    if( vspeed < 0 ){
        move_contact_solid( 90, -vspeed );
    }

    //move over if hspeed is not 0
    if( hspeed != 0 ){
        //setting some temporary vars
        var temp_y = y;
        //move up
        move_contact_solid( 90, abs( hspeed ));
        //move over
        move_contact_solid( 90 - sign( hspeed ) * 90, abs( hspeed ));
        //move down what we moved up
        if(temp_y-y != 0){
            move_contact_solid( 270, temp_y-y);
        }
        //move down again if it puts us on ground
        if( !place_free( x, y + abs( hspeed ) + 1 )){
            move_contact_solid( 270, abs( hspeed ));
        }
    }
    //move down if vspeed is down
    if( vspeed > 0 ){
        move_contact_solid( 270, vspeed );
    }
    //if we are blocked then set vspeed to 0
    if( !place_free( x, y + sign( vspeed ))){
		if vspeed > 0
			vspeed = 0;
		else
			vspeed = -vspeed;
    }
    //set hspeed to 0 if we can't move horizontally (we're blocked)
    if( hspeed != 0 and x == xprevious ){
        hspeed = 0;
    }
}
