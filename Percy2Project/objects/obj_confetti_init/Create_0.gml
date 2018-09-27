/// @description 


particles   = part_system_create();
// Create confetti
Confetti = part_type_create();

part_type_sprite(Confetti , s_confetti, true, true, true); 
part_type_orientation(Confetti , 0, 360, 0, 45, 0);
part_type_gravity(Confetti, 0.1, 270);
part_type_direction(Confetti , 90-20, 90+20, 0, 30);
part_type_speed(Confetti , 2, 3, -0, 0);
part_type_size(Confetti , 0.1, 0.6, 0, 0);
part_type_life(Confetti , 20, 60);

//default is 15

how_much = 20;
repeat (how_much) part_particles_create(particles, x, y, Confetti , 2);