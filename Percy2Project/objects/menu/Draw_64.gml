
if warning_display {
	draw_set_color($0022ff);
	draw_rectangle(0, 0, room_width, room_height, false);
	draw_set_color(c_white);
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_text(room_width/2, room_height/2, "!!! YOU WILL LOSE YOUR SAVE DATA !!!" + "\n\n\n" + "PRESS A TO CONTINUE\n\n" + string((warning_time div 60)+1));
	warning_time--;
} else {
	warning_time = 300;
}

if warning_time <= 0 and warning_display {
	warning_display = false;
}