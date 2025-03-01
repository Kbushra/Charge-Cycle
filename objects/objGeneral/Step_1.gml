if keyboard_check_pressed(vk_f4) { window_set_fullscreen(!window_get_fullscreen()); }

global.r = keyboard_check(vk_right) || keyboard_check(ord("R"));
global.l = keyboard_check(vk_left) || keyboard_check(ord("L"));
global.u = keyboard_check(vk_up) || keyboard_check(ord("U"));
global.d = keyboard_check(vk_down) || keyboard_check(ord("D"));

if room != rmInit && room != rmMenu { global.spwnRoom = room; }

audio_master_gain(0);