if keyboard_check_pressed(vk_enter) { fadeIn = true; }

alpha += (fadeIn - fadeOut)*0.02;

if fadeIn && alpha >= 1.5
{
	fadeIn = false;
	fadeOut = true;
	room_goto(rmStart);
	instance_activate_object(objBattery);
}

if alpha <= 0 { instance_destroy(); }