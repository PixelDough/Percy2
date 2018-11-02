//target_object = noone;

if !instance_exists(obj_player) and target_object == obj_player target_object = self
if instance_exists(obj_player) {
	//target_object = obj_player;
	
	if(target_object.x > target_x + x_buff || target_object.x < target_x - x_buff) {
		target_x = target_object.x - (x_buff * sign(target_object.x - target_x));
	}
	if(target_object.y > target_y + y_buff || target_object.y < target_y - y_buff) {
		target_y = target_object.y - (y_buff * sign(target_object.y - target_y));
	}
} else if target_object != obj_player {
	
	target_x = target_object.x;
	target_y = target_object.y;
}
//if target_object == obj_player {
	var _room = noone;
	if target_object == obj_player
		_room = target_object.current_room;
	if _room != noone {
		target_x = clamp(target_x, _room.x + width/2, _room.bbox_right - width/2 + 1);
		target_y = clamp(target_y, _room.y + height/2, _room.bbox_bottom - height/2 + 1);
	} else {
		target_x = clamp(target_x, width/2, room_width - width/2 + 1);
		target_y = clamp(target_y, height/2, room_height - height/2 + 1);
	}
//}

x = target_x;
y = target_y;

camera_set_view_pos(view_camera[0], x - width/2, y - height/2);

if layer_exists("Stars") {
	layer_x("Stars", x*0.9);
	//layer_y("Mountains", y - height/2);
	//layer_y("Mountains", y-(room_height-sprite_get_height(layer_background_get_sprite(layer_background_get_id(layer_get_id("Mountains"))))));
	layer_y("Stars", y*0.9);
}

if layer_exists("Mountains") {
	layer_x("Mountains", x/2);
	//layer_y("Mountains", y - height/2);
	//layer_y("Mountains", y-(room_height-sprite_get_height(layer_background_get_sprite(layer_background_get_id(layer_get_id("Mountains"))))));
	layer_y("Mountains", (room_height-240)-((room_height-240)-camera_get_view_y(view_camera[0]))*0.5);
}
if layer_exists("NorthernLights") {
	layer_x("NorthernLights", x*0.5);
	//layer_y("Mountains", y - height/2);
	layer_y("NorthernLights", 0+(y-height/2)*0.85);
}

//if instance_exists(obj_player) {
//	instance_deactivate_layer(layer_get_id("Instances"));
//	instance_activate_region(x-width/2, y-height/2, width, height, true)
//}