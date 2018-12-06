/// @description Insert description here
// You can write your code in this editor
if !keyboard_check(vk_lshift) exit;
var _file = get_save_filename("*.png", "")
if _file != ""
	screen_save(_file)