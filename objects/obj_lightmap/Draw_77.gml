// Create surface
if ( !surface_exists(light_surface) ) 
light_surface = surface_create(
	surface_get_width(application_surface), 
	surface_get_height(application_surface)
);

// Setup
var fog = gpu_get_fog();
gpu_set_fog(0, 0, 0, 0);
gpu_set_ztestenable(false);
gpu_set_blendmode(bm_subtract);

// Draw lights
surface_set_target(light_surface);
draw_clear_alpha(light_ambient, light_ambint);
camera_apply(view_camera[0]);
with ( obj_light ) event_perform(ev_draw, 0);	
surface_reset_target();

// Reset
gpu_set_blendmode(bm_normal);
gpu_set_ztestenable(true);
matrix_set(matrix_world, Main.matrix_default);
gpu_set_fog(fog[0], fog[1], fog[2], fog[3]);
