// Turn culling off
var cull = gpu_get_cullmode();
gpu_set_cullmode(cull_noculling);

// Draw sprite
draw_wall(sprite, index, x, y, z, 1, 1, angle);

// Reset culling
gpu_set_cullmode(cull);