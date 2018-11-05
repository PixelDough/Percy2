// Inherit the parent event
event_inherited();

velocity[1] += grav;

if instance_place_plus(x, y+velocity[1], obj_solid) {
	velocity[1] *= -0.5;
}

x += velocity[0];
y += velocity[1];