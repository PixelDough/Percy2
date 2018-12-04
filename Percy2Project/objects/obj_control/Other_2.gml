
randomize();
//audio_play_sound(mus_FrostyFrolic, 100, true)

global.new_version = false;
global.version = 1.4;
global.newestVersion = http_get_file("https://raw.githubusercontent.com/PixelDough/Percy2/master/PercyVersion.ini?token=AYGS6LILpnWSlJPbROTp1WKaC5UMiDTEks5cC06OwA%3D%3D", working_directory + "\Versions.ini");

pal_swap_init_system(shd_pal_swapper);

//discord_init_dll();
//discord_init_app(495810388441694209);
//discord_update_presence("TEST", "TEST", spr_percy_stand, spr_percy_stand)

global.checkpoint = [0, 0, room];
//"1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz-,.:()"
global.fontString = "!\"©%'()^+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ ";
global.font8px = font_add_sprite_ext(spr_font8px, global.fontString, false, -1)
global.font16px = font_add_sprite_ext(spr_font16px, global.fontString, false, 0)
draw_set_font(global.font8px);

global.player_door = noone;

global.level_num = 0;
global.level_room = 0;

global.level_rooms = [];

global.saveGame_mode = 0;
global.saveGame_date = date_current_datetime();

global.levels = ds_grid_create(24, 6);

load_game();

#macro DIE 15