///@arg sprite_index
///@arg time

var _sprite_index = argument0;
var _time = argument1;

var _sprite_speed = sprite_get_speed(_sprite_index)

var _sprite_with_room_speed = (_sprite_speed / room_speed)

var _image_index = _time * (_sprite_with_room_speed);

return _image_index;