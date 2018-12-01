
room_goto_circle(rm_levelSelect, false, mus_FrostyFrolicTitle)
global.levels[# global.level_num, 1] = true;
//show_message(string(global.levels[# global.level_num, 5]))
if obj_player.level_time <= global.levels[# global.level_num, 5] {
	global.levels[# global.level_num, 3] = true;
}
