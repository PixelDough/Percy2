///@param number
///@param rooms
///@param music
///@param time

var _num = argument0;
var _rooms = argument1;
var _music = argument2;
var _time = argument3;

//global.levels[_num, 0] = _rooms;
//global.levels[_num, 1] = _completed;
//global.levels[_num, 2] = _coco_found;

ds_grid_set(global.levels, _num, 0, _rooms);
ds_grid_set(global.levels, _num, 4, _music);
ds_grid_set(global.levels, _num, 5, _time);
