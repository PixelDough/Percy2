///@param number
///@param rooms
///@param completed
///@param coco_found
///@param time_trial_beat
///@param music

var _num = argument0;
var _rooms = argument1;
var _completed = argument2;
var _coco_found = argument3;
var _time = argument4;
var _music = argument5;

//global.levels[_num, 0] = _rooms;
//global.levels[_num, 1] = _completed;
//global.levels[_num, 2] = _coco_found;

ds_grid_set(global.levels, _num, 0, _rooms);
ds_grid_set(global.levels, _num, 1, _completed);
ds_grid_set(global.levels, _num, 2, _coco_found);
ds_grid_set(global.levels, _num, 3, _time);
//ds_grid_set(global.levels, _num, 4, _music);