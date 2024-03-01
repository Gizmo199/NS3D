function shadow_cast_enable(_func=undefined){
	
	// Create shadowmap 
	if ( !instance_exists(obj_shadowmap) ) instance_create_depth(0, 0, 0, obj_shadowmap);
	
	// Add shadow draw function
	_func ??= function(){ draw_self(); }
	with ( obj_shadowmap ) array_push(shadow_emitter, _func);
}