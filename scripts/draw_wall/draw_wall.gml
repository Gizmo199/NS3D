function draw_wall(_sprite, _index, _x, _y, _z, _xscale=1, _yscale=1, _angle=0){
	matrix_set(matrix_world, matrix_build(_x, _y, _z, 90, _angle, 0, 1, 1, 1));
	draw_sprite_ext(_sprite, _index, 0, 0, _xscale, _yscale, 0, c_white, 1);
}
