/// @description TURN EVENT
if sprite_index != spr_percy_turn sprite_index = spr_percy_turn;
if global.time % 2 == 0 audio_play_sound(snd_slip, 100, false);