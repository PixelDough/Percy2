///@param target
var _target = argument[0];
var _target_sprite = _target.sprite_index;
var _target_image_index = _target.image_index;

var _dead = instance_create_layer(_target.x, _target.y, "META", obj_dead)
_dead.sprite_index = _target_sprite;
_dead.image_index = _target_image_index;
_dead.image_speed = 0;

instance_destroy(_target)