ACTION = 0;
event_user(ACTION);

keyboard_set_map(vk_up,ord("W"));
keyboard_set_map(vk_left,ord("A"),);
keyboard_set_map(vk_down,ord("S"),);
keyboard_set_map(vk_right,ord("D"),);

keyboard_set_map(ord("Z"),ord("N"));
keyboard_set_map(ord("X"),ord("M"));

for (var _i = 0; _i <= 1; _i++) {
	r = false;
	l = false;
	u = false;
	d = false;

	r_p = false;
	l_p = false;
	u_p = false;
	d_p = false;
	
	r_released = false;
	l_released = false;
	u_released = false;
	d_released = false;

	action_two = false;
	action_one = false;

	action_two_pressed = false;
	action_one_pressed = false;
	
	action_two_released = false;
	action_one_released = false;

	pause_pressed = false;
}

