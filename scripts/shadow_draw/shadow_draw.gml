function shadow_draw(){
	if ( !instance_exists(obj_shadowmap) ) return;
	
	with ( obj_shadowmap ) {
		gpu_set_texfilter(true);
		matrix_set(matrix_world, 
			matrix_multiply(
				matrix_get(matrix_world),
				matrix_build(0, .1, other.sprite_height, 0, 0, 0, 1, 1, 1)
			)
		);	
		draw_surface_part_ext(
			shadow_surface, 
			(other.x/shadow_downsample)-(other.sprite_width/(shadow_downsample*2)), 
			(other.y/shadow_downsample)-((other.sprite_height/shadow_downsample)), 
			other.sprite_width/shadow_downsample, 
			other.sprite_height, 
			-other.sprite_width*.5, 
			0, 
			shadow_downsample, 
			shadow_downsample, c_black, 
			shadow_intensity
		);
		gpu_set_texfilter(false);
	}
	
}