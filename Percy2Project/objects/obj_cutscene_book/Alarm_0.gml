/// @description NEXT PAGE ALARM
if PAGE >= sprite_get_number(spr_cutscene_pages)-2 {
	room_goto_circle(rm_levelSelect, false, mus_FrostyFrolicTitle);
	exit;
} else {
	PAGE+=2;
}
alarm[0] = 300;
