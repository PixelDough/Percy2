ini_open("SaveGame.ini");

global.saveGame_mode = ini_read_real("Info", "Mode", MENU_MODES.CLASSIC);
global.saveGame_date = ini_read_real("Info", "StartDate", date_create_datetime(current_year, current_month, 1, 0, 0, 0));

ds_grid_read(global.levels, ini_read_string("Levels", "ds_grid", global.levels))

ini_close();

level_create(0, [level1, level1_sub1],					mus_FrostyFrolic,		60 * 20);
level_create(1, [level2, level2_sub1],					mus_FrostyFrolic,		60 * 30);
level_create(2, [level3, level3_sub1,	level3_sub2],	mus_FrostyFrolic,		60 * 20);
level_create(3, [level4],								mus_FrostyFrolic,		60 * 15);
level_create(4, [level5],								mus_FrostyFrolic,		60 * 15);
level_create(5, [level6, level6_sub1],					mus_FrostyFrolic,		60 * 20);
level_create(6, [level7],								mus_GingerbreadTown,	60 * 20);
level_create(7, [level8],								mus_GingerbreadTown,	60 * 30);
level_create(8, [level9],								mus_GingerbreadTown,	60 * 30);