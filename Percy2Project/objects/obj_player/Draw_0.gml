draw_shadow()

var _pal = POWER;
if POWER == 4 _pal=floor((global.time)/2 % POWER)
pal_swap_set(spr_pal_percy, _pal, false);
draw_self();
pal_swap_reset();


//draw_set_color(c_purple)
//draw_circle(floor(x/16)*16, floor((y-sprite_yoffset)/16)*16, 1, false);
//draw_set_color(c_green)
//draw_circle(floor(x/16)*16, floor((bbox_top)/16)*16, 1, false);

