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

	action_two = keyboard_check(ord("M"))
	action_one = keyboard_check(ord("N"))

	action_two_pressed = keyboard_check_pressed(ord("M"))
	action_one_pressed = keyboard_check_pressed(ord("N"))

	action_two_released = keyboard_check_released(ord("M"))
	action_one_released = keyboard_check_released(ord("N"))
	
	pause_pressed = keyboard_check_pressed(vk_enter);
	select_pressed = keyboard_check_pressed(vk_rshift);
	
	escape_pressed = keyboard_check_pressed(vk_escape);
	
	controller_detected = false;
	var maxpads = gamepad_get_device_count();
	for (var i = 0; i < maxpads; i++){
		if (gamepad_is_connected(i)){
			r_p = r_p or gamepad_button_check_pressed(i, gp_padr);
			l_p = l_p or gamepad_button_check_pressed(i, gp_padl);
			u_p = u_p or gamepad_button_check_pressed(i, gp_padu);
			d_p = d_p or gamepad_button_check_pressed(i, gp_padd);
			
			r = r or gamepad_button_check(i, gp_padr);
			l = l or gamepad_button_check(i, gp_padl);
			u = u or gamepad_button_check(i, gp_padu);
			d = d or gamepad_button_check(i, gp_padd);	

			r_released = r_released or gamepad_button_check_released(i, gp_padr);
			l_released = l_released or gamepad_button_check_released(i, gp_padl);
			u_released = u_released or gamepad_button_check_released(i, gp_padu);
			d_released = d_released or gamepad_button_check_released(i, gp_padd);

			action_two = action_two or gamepad_button_check(i, gp_face1);
			action_one = action_one or gamepad_button_check(i, gp_face2) || gamepad_button_check(i, gp_face3);

			action_two_pressed = action_two_pressed or gamepad_button_check_pressed(i, gp_face1);
			action_one_pressed = action_one_pressed or gamepad_button_check_pressed(i, gp_face2) || gamepad_button_check_pressed(i, gp_face3);

			action_two_released = action_two_released or gamepad_button_check_released(i, gp_face1);
			action_one_released = action_one_released or gamepad_button_check_released(i, gp_face2) || gamepad_button_check_released(i, gp_face3);
	
			pause_pressed = (pause_pressed or gamepad_button_check_pressed(i, gp_start)) and !action_two;
			select_pressed = select_pressed or gamepad_button_check_pressed(i, gp_select);
			
			escape_pressed = (!gamepad_button_check(i, gp_start) and escape_pressed);
			
			controller_detected = true;
		}
	}
	
} else {
	input_reset();
}
