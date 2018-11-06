
image_speed = 0;
if place_meeting(x, y, obj_player) {
	ACTION = END_BELL.ON
	alarm[0] = 60;
}

//if instance_exists(obj_player) {
//	depth = obj_player.depth + (sign(x-obj_player.x))
//}