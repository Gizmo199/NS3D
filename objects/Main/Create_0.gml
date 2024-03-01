room_goto_next();
matrix_default = matrix_build_identity();

application_surface_draw_enable(false);
surface_resize(application_surface, display_get_width(), display_get_height());
window_set_showborder(false);
window_set_size(display_get_width(), display_get_height());
window_set_position(1920, 0);
randomize();