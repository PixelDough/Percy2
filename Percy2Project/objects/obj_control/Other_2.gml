
audio_play_sound(mus_FrostyFrolic, 100, true)

pal_swap_init_system(shd_pal_swapper);

//discord_init_dll();
//discord_init_app(495810388441694209);
//discord_update_presence("TEST", "TEST", spr_percy_stand, spr_percy_stand)

global.checkpoint = [0, 0, room];

global.fontString = "!\"©%'()^+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ ";
global.font8px = font_add_sprite_ext(spr_font8px, global.fontString, false, 0)
global.font16px = font_add_sprite_ext(spr_font16px, global.fontString, false, 0)
draw_set_font(global.font8px);