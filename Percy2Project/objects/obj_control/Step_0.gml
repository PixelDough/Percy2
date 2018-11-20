global.time++;

if keyboard_check_pressed(ord("R")) {
	CURRENT_LEVEL = [];
	CURRENT_LEVEL = level_load(LEVELS, LEVEL);
	room_goto_circle(CURRENT_LEVEL[ROOM]);
}