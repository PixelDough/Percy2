//draw_shadow(8);

gpu_set_fog(true, c_black, 0, 1);
draw_nineslice(sprite, type, bbox_left+8, bbox_top+8, bbox_right+1+8, bbox_bottom+1+8);
gpu_set_fog(false, c_black, 0, 1);
draw_nineslice(sprite, type, bbox_left, bbox_top, bbox_right+1, bbox_bottom+1);