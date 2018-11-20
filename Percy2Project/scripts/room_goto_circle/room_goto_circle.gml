///@arg	numb
///@arg fade_in

var _fade_in = argument1;

if _fade_in {
	play_sound(snd_fadeIn);
	room_goto(argument0);
} else {
	play_sound(snd_fadeOut);
}
var _fade = instance_create_layer(0, 0, "META", obj_fade);
_fade.target = argument0;

if _fade_in _fade.ACTION = CIRC_FADE.IN;

