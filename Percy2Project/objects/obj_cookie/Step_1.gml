
// Inherit the parent event
event_inherited();

solid_ = active;

if image_speed > 0 and floor(image_index+image_speed) >= image_number {
	active = false;
	image_speed = 0;
	alarm[0] = 120;
}

if image_speed < 0 and floor(image_index) == 0 {
	active = true
	image_index = 0;
	image_speed = 0;
}