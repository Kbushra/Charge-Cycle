if place_meeting(x, y, objBattery) && keyboard_check_pressed(ord("Z"))
{	
	image_angle += 90;
	image_angle %= 360;
	
	var otherPossible = reqAngle;
	if joints == 1 { otherPossible = reqAngle + 180; }
	if joints == 4 { otherPossible = image_angle; }
	
	var rightAngle = image_angle == reqAngle || image_angle == otherPossible;
	
	if rightAngle && !correctState
	{
		global.correct += 1;
		correctState = true;
	}
	else if !rightAngle && correctState
	{
		global.correct -= 1;
		correctState = false;
	}
}