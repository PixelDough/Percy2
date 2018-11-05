if place_meeting(x, y, obj_player) {
	global.checkpoint = [x, y, room];
}

if global.checkpoint[0] != x or global.checkpoint[1] != y or global.checkpoint[2] != room {
	image_speed = 0;
} else {
	image_speed = 1;
}