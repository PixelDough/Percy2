hud_fruit = 0;

SEL = 0;

fruits = 0;
collectable = spr_jingleBell;

global.player_door = -1

global.paused = false;
global.paused_sprite = noone;


SEL_PAUSE = 0;

enum MENU_PAUSE {
	PLAY,
	EXIT
}

BUTTONS_PAUSE = []			
BUTTONS_PAUSE[MENU_PAUSE.PLAY] = [spr_menu_play,	0]
BUTTONS_PAUSE[MENU_PAUSE.EXIT] = [spr_menu_help,	0]

