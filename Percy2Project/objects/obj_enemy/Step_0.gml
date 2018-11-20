
ENABLED = (bbox_right > camera_get_view_x(view_camera[0]) and bbox_left < camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])) and (bbox_bottom > camera_get_view_y(view_camera[0]) and bbox_top < camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0]));
if !ENABLED exit;

make_platform(obj_platform);
grounded = instance_place_plus(x, y+1, obj_solid);

if (instance_place_plus(x+sign(velocity[0]), y, obj_solid)) 
	velocity[0] *= -1;
	
event_user(ACTION);

