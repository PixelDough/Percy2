
draw_set_color(c_white)
//draw_text(100, 100, keyboard_key)

if surface_exists(global.gui) 
	surface_set_target(global.gui)
if room == rm_title_3d {
	//if global.time % 60 < 30
		//draw_sprite(spr_controller, 0, room_width-2, room_height-10);
	//if obj_3d_gameWorld.SPINNING {
		draw_set_halign(fa_right);
		draw_set_valign(fa_bottom);
		draw_text(room_width-2, room_height-2, "CONTROLLER RECOMMENDED");
	//}
}
surface_reset_target();