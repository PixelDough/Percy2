//draw_text(0, 0, "FRUIT: ")
//draw_sprite(spr_hud, 0, -1, -1)
if collectable == spr_fruits 
	draw_sprite(collectable, hud_fruit, 10, 10);
else
	draw_sprite(collectable, sprite_get_index_time(collectable, global.time), 10, 10);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_text(20, 10, fruits);