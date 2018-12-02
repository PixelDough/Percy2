depth = -9999

SEL = 0;
MODE = 0;

enum MENU_MAIN {
	NEW,
	PLAY,
	HELP
}

BUTTONS = []				//Sprite		x
BUTTONS[MENU_MAIN.NEW] =	[spr_menu_new,	0,	"Start a new adventure!"]
BUTTONS[MENU_MAIN.PLAY] =	[spr_menu_play,	0,	"Resume where you left off!"];
BUTTONS[MENU_MAIN.HELP] =	[spr_menu_help,	0,	"Instructions"];




enum MENU_MODES { 
	CLASSIC,
	LOCAL,
	FREE
}

MODES = [];
MODES[MENU_MODES.CLASSIC] =	["CLASSIC",		"BASED ON THE 1ST OF THE MONTH"];
MODES[MENU_MODES.LOCAL] =	["LOCAL",		"BASED ON TODAY - " + string(current_month) + "/" + string(current_day)];
//MODES[MENU_MODES.FREE] =	["FREE PLAY",	"PLAY ANY COMPLETED LEVEL\nWILL NOT ERASE SAVED GAME"];

load_game();

warning_display = false;
warning_time = 300;