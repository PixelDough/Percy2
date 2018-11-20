///@param level_array
///@param level_number

var _level_array = argument0;
var _level_number = argument1;

var _new_room_array = [];

var _level = _level_array[_level_number];

for (var _i=0; _i < array_length_1d(_level); _i++) {
	//if room_exists(_level[_i]) room_set_persistent(_level[_i], false);
	//if _i == ROOM room_persistent = false
	_new_room_array[_i] = room_duplicate(_level[_i]);
	//room_assign(_new_room_array[_i], _level[_i])
	room_set_persistent(_new_room_array[_i], true);
}

return _new_room_array;