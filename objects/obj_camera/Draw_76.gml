// Calculate where we are looking from
var fromx = x;
var fromy = y + distance;
var fromz = distance *.5;

// Calculate where we are looking at
lookx = lerp(lookx, target.x, 0.1);
lookz = lerp(lookz, max(target.z, 2), 0.05);
looky = lerp(looky, min(target.y, room_height-distance*.5), 0.1);

// Set the camera projection and view matrices
camera_set_proj_mat(view_camera[0], matrix_build_projection_perspective_fov(-fov, -16/9, 1, 2048));
camera_set_view_mat(view_camera[0], matrix_build_lookat(fromx, fromy, fromz, lookx, looky, lookz, 0, 0, 1));

// Set the fog
gpu_set_fog(true, fogcolor, distance, distance*4);
