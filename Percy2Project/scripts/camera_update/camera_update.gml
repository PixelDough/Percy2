
//var _camera = obj_3d_camera;
////var _matrix =	matrix_build_lookat(_camera.x, _camera.y, _camera.z, 
////									_camera.x+dcos(_camera.direction), _camera.y-dsin(_camera.direction), _camera.z-dsin(_camera.pitch), 
////									0, 0, 1);
//var _matrix = matrix_build_lookat(0, 0, -120, 240, 240, 0, 0, 0, 1);
//camera_set_view_mat(view_camera[0], _matrix);

//Set up camera location
var zz = -(room_width/4)/2;
var xx = 0//lengthdir_x(720,current_time/30) + (room_width*0.5);//Rotation is negative now to match with the old gif and spin clockwise
var yy = 0//lengthdir_y(720,current_time/30) + (room_height*0.5);

//Build a matrix that looks from the camera location above, to the room center. The up vector points to -z
mLookat = matrix_build_lookat(xx,yy,zz, (room_width*0.5),(room_height*0.5),0, 0,0, 1);

//Assign the matrix to the camera. This updates were the camera is looking from, without having to unnecessarily update the projection.
camera_set_view_mat(view_camera[0], mLookat);