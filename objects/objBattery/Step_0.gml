if global.respawn
{
	prevY = y;
	
	y = lerp(y, 192, 0.1);
	if y >= 191 { global.respawn = false; }
	
	exit;
}

if global.completed
{
	image_angle += 5;
	
	y = lerp(y, -32, 0.1);
	if y <= -31 && room_next(room) != -1
	{
		image_angle = 0;
		image_index = 0;
		percentLoss = 0;
		global.respawn = true;
		global.completed = false;
		room_goto_next();
	}
	
	exit;
}

if !death
{
	prevX = x;
	prevY = y;

	hMovement = lerp(hMovement, (global.r - global.l)*4, 0.2);
	vMovement = lerp(vMovement, (global.d - global.u)*4, 0.2);

	x += hMovement;
	y += vMovement;
	
	if global.r || global.l || global.d || global.u
	{
		percentLoss += global.spd;
		image_index = percentLoss/120;
	}

	if place_meeting(x, y, objHazard) { image_speed = 1; death = true; }

	if image_index >= 5 { death = true; }
}
else
{
	if instance_exists(objCPU) && objCPU.lines != -1
	{
		instance_destroy(objCPU);
		instance_create_layer(x, y, "Instances", objCPU, { lines:-1 });
	}
	
	image_angle += 5;
	acc += 0.2;
	y += acc;
	
	if acc >= 24 { game_restart(); global.respawn = true; }
}

if image_index >= 5 { image_index = 5; }