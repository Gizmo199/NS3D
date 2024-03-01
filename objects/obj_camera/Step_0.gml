// Move our position to our targets position
x = lerp(x, target.x, 0.05);
y = lerp(y, target.y, 0.05);
z = lerp(z, target.z, 0.05);

// Clamp our y position so the view doesn't show the blank space
y = clamp(y, 0, room_height-distance);