x = lerp(x, target.x, 0.05);
y = lerp(y, target.y, 0.05);
lookz = lerp(lookz, max(target.z, 2), 0.05);
lookx = lerp(lookx, target.x, 0.1);
looky = lerp(looky, min(target.y, room_height-distance*.5), 0.1);
y = clamp(y, 0, room_height-distance);