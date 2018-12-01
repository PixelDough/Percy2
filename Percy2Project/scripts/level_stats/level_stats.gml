///@param number
///@param completed
///@param coco_found
///@param time_trial_beat

var _num = argument0;
var _completed = argument1;
var _coco_found = argument2;
var _time = argument3;


ds_grid_set(global.levels, _num, 1, _completed);
ds_grid_set(global.levels, _num, 2, _coco_found);
ds_grid_set(global.levels, _num, 3, _time);
//ds_grid_set(global.levels, _num, 4, _music);