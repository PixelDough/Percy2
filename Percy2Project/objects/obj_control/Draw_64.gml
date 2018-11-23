//draw_text(0, 0, "FRUIT: ")
//draw_sprite(spr_hud, 0, -1, -1)
if room == rm_title_3d {
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_color(c_white);
	var _menu_x = obj_camera.width/2
	var _menu_y = obj_camera.height/1.5
	//draw_text(_menu_x, _menu_y, "NEW GAME");
	//draw_text(_menu_x, _menu_y+12, "OPTIONS");
	//draw_text(_menu_x, _menu_y+24, "QUIT");
}

if instance_exists(obj_player) {
	// Draw coin count
	if collectable == spr_fruits 
		draw_sprite(collectable, hud_fruit, 10, 10);
	else
		draw_sprite(collectable, sprite_get_index_time(collectable, global.time), 10, 10);
	draw_set_halign(fa_left);
	draw_set_valign(fa_middle);
	draw_set_color(c_white);
	draw_text(20, 10, fruits);
	
	// Draw Coco
	draw_set_halign(fa_right);
	draw_set_valign(fa_middle);
	draw_set_color(c_white);
	
	draw_sprite(spr_hotCoco_dark, sprite_get_index_time(spr_hotCoco, global.time), camera_get_view_width(view_camera[0])-10, 10);
	
	if global.levels[# global.level_num, 2] {
		draw_sprite(spr_hotCoco, sprite_get_index_time(spr_hotCoco, global.time), camera_get_view_width(view_camera[0])-10, 10);
	}
	
	//draw_text(camera_get_view_width(view_camera[0])-10-10, 10, "5");
}