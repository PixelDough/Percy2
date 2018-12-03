//draw_self();

var _blendEnable = gpu_get_blendenable();
var _colorEnable = gpu_get_colorwriteenable();
var _alphaEnable = gpu_get_alphatestenable();
var _blendMode = gpu_get_blendmode();
var _blendModeExt = gpu_get_blendmode_ext();

var _surf = surface_create(room_width, room_height);

surface_set_target(_surf)
	
	draw_sprite(spr_logo,0,x,y);
	
	gpu_set_blendenable(false)
	gpu_set_colorwriteenable(false,false,false,true);
	draw_set_alpha(0);
	draw_rectangle(0,0, room_width,room_height, false);
	
	draw_set_alpha(1);
	draw_sprite(spr_logo_mask,0, x, y);
	gpu_set_blendenable(true);
	gpu_set_colorwriteenable(true,true,true,true);
	
	gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
	gpu_set_alphatestenable(true);
	draw_sprite(spr_shine,0, bbox_left+shine_pos,bbox_top);
	gpu_set_alphatestenable(false);
	gpu_set_blendmode(bm_normal);
	
	gpu_set_blendenable(_blendEnable)
	gpu_set_colorwriteenable(_colorEnable[0], _colorEnable[1], _colorEnable[2], _colorEnable[3])
	gpu_set_alphatestenable(_alphaEnable)
	gpu_set_blendmode(_blendMode);
	gpu_set_blendmode_ext(_blendModeExt[0], _blendModeExt[1]);
	
surface_reset_target();

draw_surface(_surf, 0, 0)

draw_set_color(c_white);
draw_set_halign(fa_right);
draw_text(bbox_right, bbox_bottom+4, "©2018 PIXELDOUGH");

if TIME_ALIVE > 300 {
	draw_set_halign(fa_center);
	if global.time % 60 < 30 {
		var _key = "X";
		if input.controller_detected
			_key = "A";
		
		draw_text(room_width/2, room_height/1.5, "PRESS " + _key + " TO START");
	}
}