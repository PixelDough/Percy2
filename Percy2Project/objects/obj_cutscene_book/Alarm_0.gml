/// @description NEXT PAGE ALARM
PAGE+=2;
if PAGE > sprite_get_number(spr_cutscene_pages)-2 {
	room_goto_circle(rm_levelSelect, false, mus_FrostyFrolicTitle);
	exit;
}
alarm[0] = 300;
