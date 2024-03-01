// Draw shadows on ground
gpu_set_texfilter(true);
matrix_set(matrix_world, matrix_build(0, 0, .01, 0, 0, 0, 1, 1, 1));
draw_surface_ext(shadow_surface, 0, 0, shadow_downsample, shadow_downsample, 0, c_black, shadow_intensity);
gpu_set_texfilter(false);