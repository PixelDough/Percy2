
ini_open("SaveGame.ini");

ini_write_string("Levels", "ds_grid", ds_grid_write(global.levels));

ini_close();