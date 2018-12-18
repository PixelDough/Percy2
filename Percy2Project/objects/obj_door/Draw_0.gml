if hidden and input.enabled {
	image_index = 1;
}

draw_shadow(1);
pal_swap_set(spr_door_pal, floor(global.level_num/6), false);
draw_self();
pal_swap_reset();

//draw_text(x, y-64, obj_control.LEVEL_ROOMS[target_room]);