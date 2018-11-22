
visible_ = true;

if place_meeting(x, y, obj_player) {
	visible_ = false 
}

if visible_ = false {
	depth = layer_get_depth(layer_get_id("Instances")) + 1;
	image_index = 1;
} else {
	depth = layer_get_depth(layer_get_id("Collisions")) - 1;
	image_index = 0;
}