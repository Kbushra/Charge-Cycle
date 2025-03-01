if alpha > 5
{
	draw_sprite_ext(sprError, 0, 341.5, 192, 1, 1, 0, c_white, otherAlpha);
	otherAlpha -= 0.04;
	
	if otherAlpha <= 1 && room != rmStart { room_goto(rmCPU); instance_activate_object(objBattery); }
	if otherAlpha <= -1 { instance_destroy(); }
	
	exit;
}

draw_sprite_ext(sprWhite, 0, 0, 0, 9999, 9999, 0, c_black, 0.75);

draw_sprite_ext(sprTitle, 0, 341.5, 160, 5, 5, 0, c_white, 1);

draw_set_halign(fa_middle);
draw_set_font(fntCPU);
draw_text(341.5, 224, "Press ENTER");

if timer <= 0
{
	draw_sprite_ext(sprLoading, index % 30, 341.5, 304, 1, 1, 0, c_white, alpha);
	alpha += 0.04;
	index++;
}