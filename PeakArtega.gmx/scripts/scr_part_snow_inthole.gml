/// Create particle
global.pt_snow = part_type_create();
var pt = global.pt_snow;

// Set the settings for the snow particle
part_type_shape(pt, pt_shape_sphere);
part_type_size(pt, .02, .05, 0, 0);
part_type_color1(pt, c_white);
part_type_speed(pt, .8, 1.4, 0, 0);
part_type_direction(pt, 270, 270, 0, 12);
part_type_life(pt, 800, 800);
