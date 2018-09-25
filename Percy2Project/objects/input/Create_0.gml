ACTION = 0;
event_user(ACTION);

keyboard_set_map(ord("W"),vk_up);
keyboard_set_map(ord("A"),vk_left);
keyboard_set_map(ord("S"),vk_down);
keyboard_set_map(ord("D"),vk_right);

keyboard_set_map(ord("M"),ord("X"));
keyboard_set_map(ord("N"),ord("Z"));

for (var _i = 0; _i <= 1; _i++) {
	r = false;
	l = false;
	u = false;
	d = false;

	r_p = false;
	l_p = false;
	u_p = false;
	d_p = false;

	action_two = false;
	action_one = false;

	action_two_pressed = false;
	action_one_pressed = false;

	pause_pressed = false;
}