
//var matrix = matrix_build(x,y, 0, 0, 0, 0, 1, 1, 1);
//matrix_set(matrix_world, matrix);

var x1 = (x-sprite_width/2);
var y1 = (y-sprite_height/4);
var x2 = (x+sprite_width/2);
var y2 = (y-sprite_height/4);
var x3 = (x+sprite_width/2);
var y3 = (y+sprite_height/4);
var x4 = (x-sprite_width/2);
var y4 = (y+sprite_height/4);
//draw_sprite_pos(sprite_index, image_index, x1, y1, x2, y2, x3, y3, x4, y4, 100);

//image_xscale = lengthdir_y(1, image_angle)
//image_yscale = lengthdir_x(1, image_angle)

//draw_self()

//draw_sprite_ext(sprite_index, image_index, x, y, 1-abs(lengthdir_y(1, image_angle)/2), 1-abs(lengthdir_x(1, image_angle)/2), image_angle, c_white, 100)
var _surf = surface_create(800,420);
surface_set_target(_surf);

//draw_sprite_ext(sprite_index, image_index, x, y, 0.25+abs(cos(degtorad(image_angle))/2), 0.25+abs(sin(degtorad(image_angle))/2), image_angle, c_white, 100)
draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, image_angle, c_white, 100)
draw_set_color(c_black)
//draw_line(x, y, x-(cos(degtorad(image_angle))/2)*10, y+(sin(degtorad(image_angle))/2)*10);

surface_reset_target();
var _surf_final = surface_create(sprite_width*2, sprite_height*2);
surface_copy_part(_surf_final, 0, 0, _surf, x-(surface_get_width(_surf_final)/2), y-(surface_get_height(_surf_final)/2), surface_get_width(_surf_final), surface_get_height(_surf_final))

draw_surface_ext(_surf_final, x-(surface_get_width(_surf_final)/2), y-(surface_get_height(_surf_final)*yscale)/2, 1, yscale, 0, c_white, 100);
surface_free(_surf);
surface_free(_surf_final);

image_angle-=0.5;

//vertex_submit(square, pr_trianglelist, sprite_get_texture(sprite_index, image_index));

//matrix_set(matrix_world, matrix_build_identity());