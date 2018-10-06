/// @param collide

var _collide = argument0;
with other {
	//landing on a platform
	with obj_platform {
		if other.bbox_bottom < bbox_top {
			solid = true;
		} else {
			solid = false;
		}
	}
	xColl = !place_free(x+(vx),y);
	if xColl vx = 0;
	//switch to idle
	if abs(vx) < 0.1 {
		vx = 0;
	}
	
	//vertical movements
	//gravity
	vy += grav;
	
	yColl = !place_free(x,y+(vy));
	grounded = false
	if _collide {
		if yColl {
			while place_free(x,y+sign(vy)) {
				y+=sign(vy);
			}
			vy = 0;
			grounded = true;
		}
		
		//loop
		if y-16 > room_height {
			y = 0;
		}
	}
	
	//limit fall speed
	vy = min(vy, vy_max);
	
	//apply velocity
	x += vx;
	y += vy;
}