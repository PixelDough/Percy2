
if obj_3d_gameWorld.SPINNING exit;

//draw_sprite(spr_menuBar, 1, 0, room_height*.5);
//draw_sprite(spr_menuBar, 0, 0, room_height*.65);

//draw_sprite_tiled()
//gpu_set_blendmode_ext(bm_src_color, bm_dest_alpha)
//gpu_set_blendmode(bm_one)

var _x = abs((obj_camera.x-obj_camera.width/2)*2)-16
_x = -48;

gpu_set_fog(true, c_black, 0, 1)
draw_sprite(spr_menu_play, 0, _x+4, (room_height/2/2)+4);
draw_sprite(spr_menu_exit, 0, _x+4, (room_height/2+(room_height/2/2))+4);
gpu_set_fog(false, c_black, 0, 1)

draw_sprite(spr_menu_play, 0, _x, room_height/2/2);
draw_sprite(spr_menu_exit, 0, _x, room_height/2+(room_height/2/2));
