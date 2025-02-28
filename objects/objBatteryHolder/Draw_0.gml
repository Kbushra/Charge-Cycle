var xShake = 0;
var yShake = 0;
if place_meeting(x, y, objBattery) { xShake = choose(1, -1); yShake = choose(1, -1); }

draw_sprite(sprite_index, 0, x + xShake, y + yShake);