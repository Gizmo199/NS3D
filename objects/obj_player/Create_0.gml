var this = self;
shadow_cast_enable(function(){
	draw_sprite_ext(sprite, index, x, y-z, xscale, yscale, 0, color, alpha);	
});
z = 0;
zsp = 0;
cyo = 1;

sprite	= sp_player;
index	= 0;
xscale	= 1;
yscale	= 1;
angle	= 0;
color	= c_white;
alpha	= 1;
angleto = 0;
camera  = instance_create_depth(0, 0, 0, obj_camera, { target : this });
light   = light_create(x, y, 8, 128, .5);