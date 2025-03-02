if audio_is_playing(musChargingB)
{
	if global.stage == 0 { loopAudio(16, 32); }
	if global.stage == 1 { loopAudio(32, 48); }
	if global.stage == 2 { loopAudio(48, 64); }
}