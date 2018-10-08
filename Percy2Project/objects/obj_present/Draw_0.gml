draw_shadow(1);
if instance_exists(obj_player) {
	pal_swap_set(spr_pal_percy, obj_player.POWER, false);
	draw_self();
	pal_swap_reset();
}