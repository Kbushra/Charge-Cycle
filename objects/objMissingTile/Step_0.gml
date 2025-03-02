depth = objBattery.depth + 10;

if place_meeting(x, y, objBattery) && keyboard_check_pressed(ord("Z")) && !global.fixed[fixId]
{
	image_index = 1;
	global.fixes++;
	
	audio_play_sound(sndWrap, 10, false);
}

global.fixed[fixId] = image_index;