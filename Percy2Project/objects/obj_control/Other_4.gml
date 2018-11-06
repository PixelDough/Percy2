if room <= parent room_goto_next();
tiles_to_solid("Collisions");
global.time = 1;

if room == rm_title_3d {
	var _fade = instance_create_layer(0, 0, "META", obj_fade);
	_fade.ACTION = CIRC_FADE.IN;
}

fruits = 0;
collectable = spr_jingleBell;