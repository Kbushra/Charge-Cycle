instance_deactivate_object(objBattery);
loading = false;
alpha = 0;
otherAlpha = 7;
timer = 30;
index = 0;

audio_play_sound(sndBuzz, 10, true);
audio_pause_sound(objGeneral.soundId);