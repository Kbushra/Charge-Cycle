randomize();

global.completed = false;
global.spd = 1;

if !variable_global_exists("respawn")
{
	global.respawn = false;
	global.spwnRoom = rmStart;
	room_goto(rmMenu);
	
	exit;
}

room_goto(global.spwnRoom);