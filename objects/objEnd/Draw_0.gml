depth = -999;

draw_sprite_ext(sprWhite, 0, 0, 0, 683, 384, 0, c_black, alpha);
alpha += 0.02;

objBattery.acc = clamp(objBattery.acc, 0, 20);
if alpha > 4 { game_end(); }