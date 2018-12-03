// Inherit the parent event
input_reset();
if x < room_width/2 - 64 {
	input.r = true;
} else if x < room_width/2 - 48 {
	input.action_one_pressed = true;
	input.action_one = true;
} else if x < room_width/2 + 48 {
	input.r = true;
} else if x < room_width/2 + 64 {
	input.action_one_pressed = true;
	input.action_one = true;
} else if x < room_width-32 {
	input.r = true;
} else {
	if velocity[0] > 0 {
		input.l = true;
	} else if alarm[0] <= 0 {
		alarm[0] = 120;
	}
} 

event_inherited();

