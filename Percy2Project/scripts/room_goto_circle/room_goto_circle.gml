///@arg	numb
///@arg fade_in
///@arg music

var _fade_in = argument1;
var _music = argument2;

//audio_stop_all();

if _fade_in {
	room_goto(argument0);
	play_sound(snd_fadeIn);
} else {
	play_sound(snd_fadeOut);
}
var _fade = instance_create_layer(0, 0, "META", obj_fade);
_fade.target = argument0;
_fade.music = _music;

if _fade_in 
	_fade.ACTION = CIRC_FADE.IN;

