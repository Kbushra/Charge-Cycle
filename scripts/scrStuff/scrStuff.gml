// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function resetCPU()
{
	pos = 0;
	page = 0;
	active = true;
	char_counter = 0;
	dialogueTimer = 120;
	text = array_create(1, "");
}

function loopAudio(_start, _end)
{
	if audio_is_playing(musCharging) { var diff = 53.3; }
	else { var diff = 16; }
	
	var pos = audio_sound_get_track_position(soundId);
	if pos > _end { audio_sound_set_track_position(soundId, pos-diff); }
	if pos < _start { audio_sound_set_track_position(soundId, pos+diff); }
}