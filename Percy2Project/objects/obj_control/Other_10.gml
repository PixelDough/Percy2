
if instance_exists(obj_player) or global.paused {
	
	//if input.pause_pressed {
		if !global.paused {
			global.paused = true;
			//global.paused_sprite = sprite_create_from_surface(application_surface, 0, 0, obj_camera.width, obj_camera.height, false, false, 0, 0);
			instance_deactivate_layer("Instances");
			instance_deactivate_layer("Instances_1");
		} else {
			global.paused = false;
			instance_activate_layer("Instances");
			instance_activate_layer("Instances_1");
		}
	//}
	
}