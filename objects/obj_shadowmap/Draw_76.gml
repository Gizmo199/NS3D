// Verify surfaces
if ( !surface_exists(shadow_surface) ) shadow_surface = surface_create(room_width, room_height);
var temp = surface_create(room_width, room_height);

//Setup
var cull = gpu_get_cullmode();
gpu_set_cullmode(cull_noculling);
gpu_set_texfilter(true);

// Draw sprites to temporary shadow surface
surface_set_target(temp);
draw_clear_alpha(0, 0);
if ( array_length(shadow_emitter) > 0 ) {
	array_foreach(shadow_emitter, function(fn){
		fn();
	});
}
surface_reset_target();

// Draw downsampled shadow surface
surface_set_target(shadow_surface);
	draw_clear_alpha(0, 0);
	draw_surface_ext(temp, 0, 0, 1/shadow_downsample, 1/shadow_downsample, 0, c_white, 1);
surface_reset_target();

// Reset
gpu_set_texfilter(false);
gpu_set_cullmode(cull);
surface_free(temp);