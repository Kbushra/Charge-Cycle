prevX = x;
prevY = y;

hMovement = lerp(hMovement, (global.r - global.l)*4, 0.2);
vMovement = lerp(vMovement, (global.d - global.u)*4, 0.2);

x += hMovement;
y += vMovement;