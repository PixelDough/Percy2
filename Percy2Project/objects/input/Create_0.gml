enabled = true;

input_reset();

ACTION = 0;
event_user(ACTION);

keyboard_set_map(vk_up,ord("W"));
keyboard_set_map(vk_left,ord("A"),);
keyboard_set_map(vk_down,ord("S"),);
keyboard_set_map(vk_right,ord("D"),);

keyboard_set_map(ord("Z"),ord("M"));
keyboard_set_map(ord("X"),ord("N"));

controller_detected = false;