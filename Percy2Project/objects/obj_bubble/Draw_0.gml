
//image_xscale = 1 - ((sin(global.time/15)+1)/16);
//image_yscale = 1 - ((2-(sin(global.time/15)+1))/16);

x = xstart + (sin(global.time/15));
y = ystart + (cos(global.time/15));

draw_shadow(1);
draw_self();