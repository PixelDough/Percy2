/// @param collide
var _xColl = noone;
var _yColl = noone;
var _collide = argument0;
with other {
	_xColl = place_meeting(x+(velocity[0]),y,obj_solid);
	if _xColl velocity[0] = 0;
	//switch to idle
	if abs(velocity[0]) < 0.1 {
		velocity[0] = 0;
	}
	
	//vertical movements
	//gravity
	velocity[1] += 0.15;
	//landing on a platform
	with obj_platform {
		if other.bbox_bottom <= bbox_top {
			solid = true;
		} else {
			solid = false;
		}
	}
	_yColl = !place_free(x,y+(velocity[1]));
	grounded = false
	if _collide {
		if _yColl {
			while place_free(x,y+sign(velocity[1])) {
				y+=sign(velocity[1]);
			}
			velocity[1] = 0;
			grounded = true;
		}
		
		//loop
		if y-16 > room_height {
			y = 0;
		}
	}
	
	//limit fall speed
	//velocity[1] = min(velocity[1], velocity[1]);
	
	//apply velocity
	x += velocity[0];
	y += velocity[1];
}