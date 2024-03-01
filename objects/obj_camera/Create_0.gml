// Make sure some kind of target is defined
self[$ "target"] ??= { 
	x : room_width * .5, 
	y : room_height * .5,
	z : 0
};

// Set variables
x		 = target.x;
y		 = target.y;
z		 = target.z;
lookx	 = x;
looky	 = y;
lookz	 = z;
fov		 = 60;
distance = 100;
fogcolor = #1A1414;	

// Enable 3D stuff
view_enabled[0] = true;
view_visible[0] = true;
gpu_set_zwriteenable(true);
gpu_set_ztestenable(true);
gpu_set_alphatestenable(true);
gpu_set_alphatestref(.05);
gpu_set_cullmode(cull_counterclockwise);
layer_force_draw_depth(true, 0);


