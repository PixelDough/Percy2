///@arg	game_mode

var _gameMode = argument0;


var _date = date_current_datetime();

ini_open("SaveGame.ini")

switch _gameMode {
	
	case MENU_MODES.CLASSIC:
		_date = date_create_datetime(current_year, current_month, 1, 0, 0, 0);
		break;
	
	case MENU_MODES.LOCAL:
		_date = _date;
		break;
	
	case MENU_MODES.FREE:
		_date = date_create_datetime(2001, 3, 25, 0, 0, 0);
		break;
	
}

if _gameMode != MENU_MODES.FREE {
	ini_write_real("Info", "Mode", _gameMode);
	ini_write_real("Info", "StartDate", _date);
} else {
	global.saveGame_mode = _gameMode;
	global.saveGame_date = _date;
}

level_stats(0, false,	false,	false);
level_stats(1, false,	false,	false);
level_stats(2, false,	false,	false);
level_stats(3, false,	false,	false);
level_stats(6, false,	false,	false);

ini_write_string("Levels", "ds_grid", ds_grid_write(global.levels));


ini_close();


//global.level_num = 0;
//global.level_room = 0;

//global.level_rooms = level_load(global.levels[# global.level_num, 0]);


if _gameMode != MENU_MODES.FREE {
	load_game();
}
