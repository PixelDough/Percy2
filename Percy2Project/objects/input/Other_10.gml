/// @description ACTION

if !instance_exists(obj_cutSceneParent) {
	r = keyboard_check(ord("D"));
	l = keyboard_check(ord("A"));
	u = keyboard_check(ord("W"));
	d = keyboard_check(ord("S"));

	r_p = keyboard_check_pressed(ord("D"));
	l_p = keyboard_check_pressed(ord("A"));
	u_p = keyboard_check_pressed(ord("W"));
	d_p = keyboard_check_pressed(ord("S"));

	action_two = keyboard_check(ord("N"));
	action_one = keyboard_check(ord("M"));

	action_two_pressed = keyboard_check_pressed(ord("N"));
	action_one_pressed = keyboard_check_pressed(ord("M"));
}