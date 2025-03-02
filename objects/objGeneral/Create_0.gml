randomize();

soundId = audio_play_sound(musChargingB, 10, true);

global.completed = false;
global.reqCorrect = 0;
global.correct = 0;
global.lossSpd = 1;

if !variable_global_exists("respawn")
{
	global.respawn = false;
	global.spwnRoom = rmStart;
	global.corrupted = false;
	
	global.musPos = 0;
	global.stage = 0;
	
	for (var i = 0; i < 5; i++) { global.fixed[i] = false; }
	global.fixes = 0;
	
	room_goto(rmMenu);
	
	exit;
}

audio_sound_set_track_position(soundId, global.musPos);

room_goto(global.spwnRoom);