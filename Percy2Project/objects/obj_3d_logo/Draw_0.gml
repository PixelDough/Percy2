//draw_self();



draw_sprite(spr_logo, 0, x, y);

gpu_set_blendenable(false)
gpu_set_colorwriteenable(false,false,false,true);
draw_set_alpha(0);
draw_rectangle(0,0, room_width,room_height, false);

draw_set_alpha(1);
draw_sprite(spr_logo_mask,0, x,y);
gpu_set_blendenable(true);
gpu_set_colorwriteenable(true,true,true,true);

gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
gpu_set_alphatestenable(true);
draw_sprite(spr_shine,0, bbox_left+shine_pos,y);
gpu_set_alphatestenable(false);
gpu_set_blendmode(bm_normal);



draw_set_color(c_white);
draw_set_halign(fa_right);
draw_text(bbox_right, bbox_bottom+4, "©2018 PIXELDOUGH");