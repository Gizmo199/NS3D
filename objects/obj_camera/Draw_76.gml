view = matrix_build_lookat(x, y+distance, distance * .5, lookx, looky, lookz, 0, 0, 1);
camera_set_view_mat(view_camera[0], view);
gpu_set_fog(true, #1A1414, distance, distance*4);
