randomize();

global.completed = false;
global.reqCorrect = 0;
global.correct = 0;
global.lossSpd = 1;

if !variable_global_exists("respawn")
{
	global.respawn = false;
	global.spwnRoom = rmStart;
	global.corrupted = false;
	room_goto(rmMenu);
	
	exit;
}

room_goto(global.spwnRoom);