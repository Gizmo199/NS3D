var cull = gpu_get_cullmode();
gpu_set_cullmode(cull_noculling);
draw_wall(sprite, index, x, y, z, 1, 1, angle);
gpu_set_cullmode(cull);