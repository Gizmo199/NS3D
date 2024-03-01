self[$ "target"] ??= { 
	x : room_width * .5, 
	y : room_height * .5,
	z : 0
};

x = target.x;
y = target.y;
z = target.z;
view_enabled[0] = true;
view_visible[0] = true;
gpu_set_zwriteenable(true);
gpu_set_ztestenable(true);
gpu_set_alphatestenable(true);
gpu_set_alphatestref(.05);
gpu_set_cullmode(cull_counterclockwise);
layer_force_draw_depth(true, 0);

lookx = x;
looky = y;
lookz = z;
fov = 60;
distance = 100;
view = undefined;
proj = matrix_build_projection_perspective_fov(-fov, -16/9, 1, 2048);
camera_set_proj_mat(view_camera[0], proj);
