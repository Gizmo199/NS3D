function draw_sprite_3d_ext(_sprite, _index, _x, _y, _z, _xscale, _yscale, _angle, _color, _alpha){		
	gpu_set_depth(-_alpha);
	matrix_set(matrix_world, matrix_build(_x, _y, _z, 90, 0, 0, 1, 1, 1));
	draw_sprite_ext(_sprite, _index, 0, 0, _xscale, _yscale, _angle, _color, _alpha);
	gpu_set_depth(0);
}