if object_index == obj_solid and distance_to_object(instance_nearest(x, y, physics_object)) > 16 {
	exit;
}

if object_is_ancestor(object_index, obj_solid) {
	draw_shadow(1);
	draw_self();
}