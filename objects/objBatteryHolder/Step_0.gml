depth = objBattery.depth + 2;

if global.correct < global.reqCorrect || global.completed || global.respawn { exit; }
if objBattery.death { exit; }

if place_meeting(x, y, objBattery)
{
	timer--;
	if timer <= 0 { global.completed = true; audio_play_sound(sndDing, 10, false); }
}