
visible_last = visible_

if place_meeting(x, y, obj_player) {
	visible_ = false 
}

if visible_ or (!visible_ and visible_timer < 30 and (global.time/2)%2==0) {
	depth = layer_get_depth(layer_get_id("Collisions")) - 1;
	image_index = 0 + (floor(global.level_num/6)*2);
} else {
	depth = layer_get_depth(layer_get_id("TilesBG")) + 1;
	image_index = 1 + (floor(global.level_num/6)*2);
	visible_timer+=2;
}