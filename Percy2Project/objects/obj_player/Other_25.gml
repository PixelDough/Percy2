/// @description DIE EVENT

if !input.enabled 
	exit;

with obj_control {
	global.level_rooms = [];
	
	global.level_rooms = level_load(global.levels[# global.level_num, 0]);
	room_goto_circle(global.level_rooms[global.level_room], false, mus_FrostyFrolic);
}

make_dead(self);