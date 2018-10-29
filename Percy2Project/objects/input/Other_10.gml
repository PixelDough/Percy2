/// @description ACTION

r = keyboard_check(ord("D")) || gamepad_button_check(0, gp_padr);
l = keyboard_check(ord("A")) || gamepad_button_check(0, gp_padl);
u = keyboard_check(ord("W")) || gamepad_button_check(0, gp_padu);
d = keyboard_check(ord("S")) || gamepad_button_check(0, gp_padd);

r_p = keyboard_check_pressed(ord("D")) || gamepad_button_check_pressed(0, gp_padr);
l_p = keyboard_check_pressed(ord("A")) || gamepad_button_check_pressed(0, gp_padl);
u_p = keyboard_check_pressed(ord("W")) || gamepad_button_check_pressed(0, gp_padu);
d_p = keyboard_check_pressed(ord("S")) || gamepad_button_check_pressed(0, gp_padd);

r_released = keyboard_check_released(ord("D")) || gamepad_button_check_released(0, gp_padr);
l_released = keyboard_check_released(ord("A")) || gamepad_button_check_released(0, gp_padl);
u_released = keyboard_check_released(ord("W")) || gamepad_button_check_released(0, gp_padu);
d_released = keyboard_check_released(ord("S")) || gamepad_button_check_released(0, gp_padd);

action_two = keyboard_check(ord("N")) || gamepad_button_check(0, gp_face1);
action_one = keyboard_check(ord("M")) || gamepad_button_check(0, gp_face2) || gamepad_button_check(0, gp_face3);

action_two_pressed = keyboard_check_pressed(ord("N")) || gamepad_button_check_pressed(0, gp_face1);
action_one_pressed = keyboard_check_pressed(ord("M")) || gamepad_button_check_pressed(0, gp_face2) || gamepad_button_check_pressed(0, gp_face3);

action_two_released = keyboard_check_released(ord("N")) || gamepad_button_check_released(0, gp_face1);
action_one_released = keyboard_check_released(ord("M")) || gamepad_button_check_released(0, gp_face2) || gamepad_button_check_released(0, gp_face3);