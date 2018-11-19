///@arg x
///@arg y
///@arg object

var _x = argument0;
var _y = argument1;
var _object = argument2;

var _hit_list = ds_list_create();
instance_place_list(_x, _y, _object, _hit_list, true);
for (var _i=0; _i<ds_list_size(_hit_list); _i++) {
	var _hit = _hit_list[|_i];
	if instance_exists(_hit) {
		if (object_is_ancestor(_hit.object_index, _object) or _hit.object_index == _object) {
			if variable_instance_exists(_hit, "solid_") {
				if _hit.solid_ {
					ds_list_destroy(_hit_list);
					return _hit;
				}
			} else {
				ds_list_destroy(_hit_list);
				return _hit;
			}
		}
	}
}
ds_list_destroy(_hit_list);
return false;