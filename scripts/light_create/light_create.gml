function light_create(_x, _y, _z, _radius=64, _intensity=1){
	if ( !instance_exists(obj_lightmap) ) instance_create_depth(0, 0, 0, obj_lightmap);
	return instance_create_depth(_x, _y, 0, obj_light, {
		z			: _z,
		radius		: _radius,
		intensity	: _intensity
	});
}