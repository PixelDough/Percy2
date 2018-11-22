///@arg sound_id
var _sound = argument0;

audio_stop_sound(_sound);
return audio_play_sound(_sound, 100, false);