depth = -99999
target = room;
with obj_camera {
	//circ_radius = camera_get_view_width(view_camera[0]);
}

end_radius = camera_get_view_width(view_camera[0]);

enum CIRC_FADE {
	OUT,
	IN
}
ACTION = CIRC_FADE.OUT;

music = mus_FrostyFrolicTitle;