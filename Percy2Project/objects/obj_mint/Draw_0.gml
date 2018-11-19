draw_shadow(1);
pal_swap_set(spr_pal_percy, POWER, false);
draw_sprite_ext(sprite_index, image_index, x, y, sign(velocity[0]), 1, 0, c_white, 100);
pal_swap_reset();