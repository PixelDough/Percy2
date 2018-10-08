///@param velocity

var _velocity = argument0;

var sprite_bbox_top = sprite_get_bbox_top(sprite_index) - sprite_get_yoffset(sprite_index);
var sprite_bbox_bottom = sprite_get_bbox_bottom(sprite_index) - sprite_get_yoffset(sprite_index);
var sprite_bbox_left = sprite_get_bbox_left(sprite_index) - sprite_get_xoffset(sprite_index);
var sprite_bbox_right = sprite_get_bbox_right(sprite_index) - sprite_get_xoffset(sprite_index);

//Horizontal collisions
var _new_vel_x = _velocity[0];
//Snap
if place_meeting(x+sign(_new_vel_x),y,obj_solid) {
    var wall = instance_place(x+sign(_new_vel_x),y,obj_solid);
	if wall.solid_ {
	    if _new_vel_x > 0 { //right
	        x = (wall.bbox_left-1)-sprite_bbox_right;
	    } else if _velocity[0] < 0 { //left
	        x = (wall.bbox_right+1)-sprite_bbox_left;
	    }
		
	    _new_vel_x = 0;
	}
}
x += _new_vel_x;

//Horizontal collisions
var _new_vel_y = _velocity[1];
y += _new_vel_y;
//Snap

var _y_hit = ds_list_create();
instance_place_list(x, y+1, obj_solid, _y_hit, true);
for (var _i=0; _i<ds_list_size(_y_hit); _i++) {
	if instance_exists(_y_hit[|_i]) {
		if (object_is_ancestor(_y_hit[|_i].object_index, obj_solid) or _y_hit[|_i].object_index == obj_solid){
			if _y_hit[|_i].solid_ {
				if _new_vel_y > 0 { //right
					y = (_y_hit[|_i].bbox_top-1)-sprite_bbox_bottom;
				} else if _velocity[1] < 0 { //left
					y = (_y_hit[|_i].bbox_bottom+1)-sprite_bbox_top;
				}
				_velocity[1] = 0;
			}
		}
	}
}
ds_list_destroy(_y_hit)

//var wall = instance_place(x,y+sign(_new_vel_y),obj_solid);
//if instance_exists(wall) {
//	if wall {
//		if wall.solid_ {
//			//if ((object_is_ancestor(wall.object_index, obj_platform) or wall.object_index == obj_platform) and _velocity[1] >= 0) or (!object_is_ancestor(wall.object_index, obj_platform)) {
//				if _new_vel_y > 0 { //right
//					y = (wall.bbox_top-1)-sprite_bbox_bottom;
//				} else if _velocity[1] < 0 { //left
//					y = (wall.bbox_bottom+1)-sprite_bbox_top;
//				}
//				_velocity[1] = 0;
//			//}
//		}
//	}
//}

return _velocity;