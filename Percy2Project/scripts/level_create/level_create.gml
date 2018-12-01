///@param number
///@param rooms
///@param music

var _num = argument0;
var _rooms = argument1;
var _music = argument2;

//global.levels[_num, 0] = _rooms;
//global.levels[_num, 1] = _completed;
//global.levels[_num, 2] = _coco_found;

ds_grid_set(global.levels, _num, 0, _rooms);
//ds_grid_set(global.levels, _num, 4, _music);