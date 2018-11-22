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

ini_write_real("Info", "Mode", _gameMode);
ini_write_real("Info", "StartDate", _date);

ini_close();

load_game();
