
var _pal = POWER;
if POWER == 4 _pal=floor(POWER+((global.time/5)%2))
pal_swap_set(spr_pal_percy, _pal, false);
draw_shadow(1)
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, c_white, 100);
pal_swap_reset();

//if holding_present draw_sprite(spr_present, 0, x+(image_xscale*8), bbox_bottom-4)

//draw_set_color(c_purple)
//draw_circle(floor(x/16)*16, floor((y-sprite_yoffset)/16)*16, 1, false);
//draw_set_color(c_green)
//draw_circle(floor(x/16)*16, floor((bbox_top)/16)*16, 1, false);

