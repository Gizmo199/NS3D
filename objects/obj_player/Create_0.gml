// Allow shadow casting
shadow_cast_enable(function(){
	draw_sprite(sprite, index, x, y-z);	
});

// 3D variables
z		= 0;
zsp		= 0;
cyo		= 1;
ground	= 0;

// Animation stuff
sprite	= sp_player;
index	= 0;
angle	= 0;
angleto = 0;

// Other objects we control
camera  = instance_create_depth(0, 0, 0, obj_camera, { target : other });
light   = light_create(x, y, 8, 128, .5);