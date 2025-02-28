if !active
{
	if !global.completed { exit; }
	
	switch lines
	{
		case 1:
			resetCPU();
			text[0] = "Thank god...";
	}
	
	exit;
}

if pos >= string_length(text[page])
{
	dialogueTimer--;
	if dialogueTimer <= 0
	{
		page++;
		dialogueTimer = 120;
		char_counter = 0;
		pos = 0;
	}
}
else
{
	pos++;
	char_counter++;
	if string_char_at(text[page], pos) != "." { audio_play_sound(sndCPU, 10, false); }
}

if page >= array_length(text)
{
	active = false;
	if lines == 0 { global.completed = true; }
}