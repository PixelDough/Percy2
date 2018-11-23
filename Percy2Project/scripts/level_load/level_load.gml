///@param level_data

var _level_data = argument0;

var _new_room_array = [];

for (var _i=0; _i < array_length_1d(_level_data); _i++) {
	var _level_rooms = _level_data;
	_new_room_array[_i] = room_duplicate(_level_rooms[_i]);
	room_set_persistent(_new_room_array[_i], true);
}

return _new_room_array;