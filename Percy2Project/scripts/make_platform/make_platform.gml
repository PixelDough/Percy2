///@param target
var _target = argument0;
var _other = id;
with all {
	if object_index == _target or object_is_ancestor(object_index, _target) {
		if _other.bbox_bottom+1 > bbox_top or _other.velocity[1] < 0
			solid_ = false;
		else
			solid_ = true;
	}
}