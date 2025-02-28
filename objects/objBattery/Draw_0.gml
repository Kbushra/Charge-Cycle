if !death && !global.respawn && !global.completed
{
	var xPos = prevX;
	var yPos = prevY;

	for (var i = 0; i < 5; i++)
	{
		draw_sprite(sprBatterySilh, 0, xPos, yPos);
		xPos = lerp(xPos, x, 0.2);
		yPos = lerp(yPos, y, 0.2);
	}
}

draw_self();