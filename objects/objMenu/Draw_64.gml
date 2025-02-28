draw_sprite_ext(sprWhite, 0, 0, 0, 9999, 9999, 0, c_black, alpha);

if fadeIn || fadeOut { exit; }

draw_sprite_ext(sprTitle, 0, 341.5, 160, 5, 5, 0, c_white, 1);

draw_set_halign(fa_middle);
draw_set_font(fntCPU);
draw_text(341.5, 224, "Press ENTER");