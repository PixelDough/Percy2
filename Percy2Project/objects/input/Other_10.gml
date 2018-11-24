/// @description ACTION


if enabled {
	r_p = keyboard_check_pressed(ord("D"))
	l_p = keyboard_check_pressed(ord("A"))
	u_p = keyboard_check_pressed(ord("W"))
	d_p = keyboard_check_pressed(ord("S"))
			
	r = keyboard_check(ord("D"))
	l = keyboard_check(ord("A"))
	u = keyboard_check(ord("W"))
	d = keyboard_check(ord("S"))

	r_released = keyboard_check_released(ord("D"))
	l_released = keyboard_check_released(ord("A"))
	u_released = keyboard_check_released(ord("W"))
	d_released = keyboard_check_released(ord("S"))

	action_two = keyboard_check(ord("N"))
	action_one = keyboard_check(ord("M"))

	action_two_pressed = keyboard_check_pressed(ord("N"))
	action_one_pressed = keyboard_check_pressed(ord("M"))

	action_two_released = keyboard_check_released(ord("N"))
	action_one_released = keyboard_check_released(ord("M"))
	
	pause_pressed = keyboard_check_pressed(vk_enter);
	
	var maxpads = gamepad_get_device_count();
	for (var i = 0; i < maxpads; i++){
		if (gamepad_is_connected(i)){
			r_p = gamepad_button_check_pressed(i, gp_padr) || ( !r && max(gamepad_axis_value(i, gp_axislh), 0));
			l_p = gamepad_button_check_pressed(i, gp_padl) || ( !l && abs(min(gamepad_axis_value(i, gp_axislh), 0)));
			u_p = gamepad_button_check_pressed(i, gp_padu) || ( !u && abs(min(gamepad_axis_value(i, gp_axislv), 0)));
			d_p = gamepad_button_check_pressed(i, gp_padd) || ( !d && max(gamepad_axis_value(i, gp_axislv), 0));
			
			r = gamepad_button_check(i, gp_padr) || max(gamepad_axis_value(i, gp_axislh), 0);
			l = gamepad_button_check(i, gp_padl) || abs(min(gamepad_axis_value(i, gp_axislh), 0));
			u = gamepad_button_check(i, gp_padu) || abs(min(gamepad_axis_value(i, gp_axislv), 0));
			d = gamepad_button_check(i, gp_padd) || max(gamepad_axis_value(i, gp_axislv), 0);			

			r_released = gamepad_button_check_released(i, gp_padr);
			l_released = gamepad_button_check_released(i, gp_padl);
			u_released = gamepad_button_check_released(i, gp_padu);
			d_released = gamepad_button_check_released(i, gp_padd);

			action_two = gamepad_button_check(i, gp_face1);
			action_one = gamepad_button_check(i, gp_face2) || gamepad_button_check(i, gp_face3);

			action_two_pressed = gamepad_button_check_pressed(i, gp_face1);
			action_one_pressed = gamepad_button_check_pressed(i, gp_face2) || gamepad_button_check_pressed(i, gp_face3);

			action_two_released = gamepad_button_check_released(i, gp_face1);
			action_one_released = gamepad_button_check_released(i, gp_face2) || gamepad_button_check_released(i, gp_face3);
	
			pause_pressed = gamepad_button_check_pressed(i, gp_start);
		}
	}
	
} else {
	input_reset();
}
