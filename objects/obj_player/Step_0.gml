var ix = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var iy = keyboard_check(ord("S")) - keyboard_check(ord("W"));

var input_direction = point_direction(0, 0, ix, iy);
var input_distance = point_distance(0, 0, ix, iy);

cyo--;
if ( z > 0 ) zsp -= .2;
else { 
	z = 0; 
	zsp = 0;
	cyo = 8;
}
if ( input_distance > 0 ) {
	
	hsp = lerp(hsp, ix, 0.3);
	vsp = lerp(vsp, iy, 0.3);
	if ( index == 0 ) index = 1;
	if ( ix < 0 ) xscale = -1;
	else if ( ix > 0 ) xscale = 1;
	if ( z == 0 ) {
		cyo = 8;
		zsp = 1;
		index++;
	}
	
} else {
	hsp = 0;
	vsp = 0;
	index = 0;
}
if ( cyo > 0 && keyboard_check_pressed(vk_space) ) {
	zsp = 2.5;
	cyo = 0;
}
z += zsp;
//angle = lerp(angle, 0, 0.2);
if ( xscale = 1 ) angleto = 1;
else angleto = 180;
angle += angle_difference(angleto, angle)*.2;
index %= 3;
move_and_collide(hsp, vsp, obj_wall);
light.x = x;
light.y = y;