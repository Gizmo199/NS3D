// Get inputs
var ix = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var iy = keyboard_check(ord("S")) - keyboard_check(ord("W"));
var ij = keyboard_check_pressed(vk_space);

// Get input direction & distance
var idir = point_direction(0, 0, ix, iy);
var idis = point_distance(0, 0, ix, iy);

// Apply gravity
var grounded = ( z == ground );
zsp = ( !grounded ? zsp-.2 : 0 );

// Update coyote time
cyo = ( grounded ? 12 : cyo-1 );

// Update speeds with inputs
if ( idis > 0 ) {
	
	// Update speed
	var msp = 1;
	hsp = lerp(hsp, dcos(idir) * msp, 0.3);
	vsp = lerp(vsp,-dsin(idir) * msp, 0.3);
	
	// Animate
	var xmove = sign(ix);
	angleto = ( xmove == 0 ? angleto : 90 - ( xmove*90 ));

	index += grounded;
	zsp   += grounded;
	index = max(index, 1);
	
} else {
	
	// Stop moving
	hsp = 0;
	vsp = 0;
	index = 0;
}
index %= 3;

// Jumping
if ( cyo > 0 && ij ) {
	zsp = 2.5;
	cyo = 0;
}

// Move player
z += zsp;
z = max(z, ground);
move_and_collide(hsp, vsp, obj_wall);

// Flip to the angle we want the player to be
angle += angle_difference(angleto, angle)*.2;

// Update light position
light.x = x;
light.y = y;