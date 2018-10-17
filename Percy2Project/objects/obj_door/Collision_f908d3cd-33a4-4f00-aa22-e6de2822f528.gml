
if input.u_p {
	var _other_door = instance_nearest_notme(obj_door);
	other.x = _other_door.x;
	other.y = _other_door.bbox_bottom;
}