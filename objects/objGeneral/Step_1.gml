if keyboard_check_pressed(vk_f4) { window_set_fullscreen(!window_get_fullscreen()); }

global.r = keyboard_check(vk_right) || keyboard_check(ord("D"));
global.l = keyboard_check(vk_left) || keyboard_check(ord("A"));
global.u = keyboard_check(vk_up) || keyboard_check(ord("W"));
global.d = keyboard_check(vk_down) || keyboard_check(ord("S"));

if room != rmInit && room != rmMenu { global.spwnRoom = room; }

global.musPos = audio_sound_get_track_position(soundId);

if os_browser == browser_not_a_browser { audio_master_gain(0.7); }
else { audio_master_gain(0.4); }