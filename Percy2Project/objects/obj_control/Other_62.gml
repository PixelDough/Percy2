
if file_exists("Versions.txt") {
	ini_open("Versions.txt");
	var _newest_version = ini_read_real("Versions", "Newest", 1.0);
	if _newest_version != global.version {
		global.new_version = true;
		show_message("A new version of this game is available!")
		game_end();
	}
	ini_close();
}