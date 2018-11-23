ini_open("SaveGame.ini");

global.saveGame_mode = ini_read_real("Info", "Mode", MENU_MODES.CLASSIC);
global.saveGame_date = ini_read_real("Info", "StartDate", date_create_datetime(current_year, current_month, 1, 0, 0, 0));

ds_grid_read(global.levels, ini_read_string("Levels", "ds_grid", global.levels))

ini_close();