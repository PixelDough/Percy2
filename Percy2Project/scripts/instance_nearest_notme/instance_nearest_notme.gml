///@arg object
var OBJECT = argument0;

var _x = x;
x -= 10000000;
var _inst = instance_nearest(_x, y, OBJECT);
x = _x;
if _inst != id && _inst != noone
{
// You found an instance!
return _inst;
}
return noone;