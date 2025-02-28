if place_meeting(x, y, objBattery)
{
	timer--;
	if timer <= 0 { global.completed = true; }
}