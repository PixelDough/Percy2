depth = -9999

SEL = 0;
MODE = 0;

enum MENU_MAIN {
	NEW,
	PLAY,
	EXIT
}

BUTTONS = []				//Sprite		x
BUTTONS[MENU_MAIN.NEW] =	[spr_menu_new,	0,	"Start a new adventure!"]
BUTTONS[MENU_MAIN.PLAY] =	[spr_menu_play,	0,	"Resume where you left off!"];
BUTTONS[MENU_MAIN.EXIT] =	[spr_menu_exit,	0,	"Leaving so soon?"];




enum MENU_MODES { 
	GLOBAL,
	LOCAL,
	FREE
}

MODES = [];
MODES[MENU_MODES.GLOBAL] =	["GLOBAL",		"BASED ON DECEMBER 1ST"];
MODES[MENU_MODES.LOCAL] =	["LOCAL",		"BASED ON TODAY - " + string(date_get_month(date_current_datetime())) + "/" + string(date_get_day(date_current_datetime()))];
MODES[MENU_MODES.FREE] =	["FREE PLAY",	"PLAY ANY COMPLETED LEVEL"];
