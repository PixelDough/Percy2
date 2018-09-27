//Offsets
var sprite_bbox_top = sprite_get_bbox_top(sprite_index) - sprite_get_yoffset(sprite_index);
var sprite_bbox_bottom = sprite_get_bbox_bottom(sprite_index) - sprite_get_yoffset(sprite_index);
var sprite_bbox_left = sprite_get_bbox_left(sprite_index) - sprite_get_xoffset(sprite_index);
var sprite_bbox_right = sprite_get_bbox_right(sprite_index) - sprite_get_xoffset(sprite_index);

//Horizontal collisions
x += velocity[0];

//Snap
if place_meeting(x+sign(velocity[0]),y,obj_solid) {
    var wall = instance_place(x+sign(velocity[0]),y,obj_solid);
    if velocity[0] > 0 { //right
        x = (wall.bbox_left-1)-sprite_bbox_right;
    } else if velocity[0] < 0 { //left
        x = (wall.bbox_right+1)-sprite_bbox_left;
    }
    velocity[0] = 0;
}

//Horizontal collisions
y += velocity[1];

//Snap
if place_meeting(x,y+sign(velocity[1]),obj_solid) {
    var wall = instance_place(x,y+sign(velocity[1]),obj_solid);
    if velocity[1] > 0 { //right
        y = (wall.bbox_top-1)-sprite_bbox_bottom;
    } else if velocity[1] < 0 { //left
        y = (wall.bbox_bottom+1)-sprite_bbox_top;
    }
    velocity[1] = 0;
}