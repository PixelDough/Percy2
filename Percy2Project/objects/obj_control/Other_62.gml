
//if file_exists(working_directory + "\Versions.ini") {
//	ini_open(working_directory + "\Versions.ini");
//	var _newest_version = ini_read_string("Version", "Newest", "ERROR");
//	if _newest_version != global.version {
//		global.new_version = true;
//		show_message("A new version of this game is available!\n\n" + string(_newest_version))
//		game_end();
//	}
//	ini_close();
//}

if ds_map_find_value(async_load, "id") == global.newestVersion
{
    var status = ds_map_find_value(async_load, "status");
    if status == 0
    {
        var path = ds_map_find_value(async_load, "result");
        ini_open(working_directory + "\Versions.ini");
			if global.version < ini_read_real("VERSION", "NEWEST", 1.0) {
				show_message("A new version of this game is available!\n\nVersion: " + string(global.version) + "\nNewest Version: " + string(ini_read_real("VERSION", "NEWEST", 1.0)))
				url_open("https://pixeldough.itch.io/percy2")
				game_end();
			}
		ini_close();
    }
}