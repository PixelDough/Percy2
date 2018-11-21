/// @description Insert description here
// You can write your code in this editor
if velocity[0] != 0 {
	image_xscale = sign(velocity[0]);
}

velocity[1]+=grav;

x+=velocity[0];
y+=velocity[1];