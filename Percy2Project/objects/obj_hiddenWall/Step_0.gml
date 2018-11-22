
visible = true;

depth = layer_get_depth(layer_get_id("Collisions")) - 1;

if place_meeting(x, y, obj_player) {
	visible = false 
}