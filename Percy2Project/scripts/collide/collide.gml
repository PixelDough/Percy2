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
    if _new_vel_x > 0 { //right
        x = (wall.bbox_left-1)-sprite_bbox_right;
    } else if _velocity[0] < 0 { //left
        x = (wall.bbox_right+1)-sprite_bbox_left;
    }
    _new_vel_x = 0;
}
x += _new_vel_x;

//Horizontal collisions
var _new_vel_y = _velocity[1];
y += _new_vel_y;
//Snap
if place_meeting(x,y+sign(_new_vel_y),obj_solid) {
    var wall = instance_place(x,y+sign(_new_vel_y),obj_solid);
    if _new_vel_y > 0 { //right
        y = (wall.bbox_top-1)-sprite_bbox_bottom;
    } else if _velocity[1] < 0 { //left
        y = (wall.bbox_bottom+1)-sprite_bbox_top;
    }
    _velocity[1] = 0;
}


return _velocity;