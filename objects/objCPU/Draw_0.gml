if !active { exit; }

depth = objBattery.depth + 1;

draw_set_halign(fa_middle);
draw_set_color(c_black);
draw_set_font(fntCPU);
draw_text(341.5, 32, string_copy(text[page], 0, pos));

draw_sprite(sprCPUIcon, 0, 341.5, 8);