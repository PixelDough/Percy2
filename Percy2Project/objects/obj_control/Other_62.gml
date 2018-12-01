
if file_exists("Versions.ini") {
	ini_open("Versions.ini");
	var _newest_version = ini_read_real("Version", "Newest", 2.0);
	if _newest_version > global.version {
		global.new_version = true;
		show_message("A new version of this game is available!\n\n" + string(_newest_version))
		game_end();
	}
	ini_close();
}