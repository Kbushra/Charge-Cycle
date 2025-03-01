if global.completed && !endText
{
	resetCPU();
	endText = true;
	
	switch lines
	{
		case 1:
			text[0] = "Thank god...";
			break;
		case 2:
			text[0] = "Great, only 9 billion left!";
			break;
		case 3:
			text[0] = "Out of here...";
			break;
		case 4:
			text[0] = "Yup, go around your problems.";
			break;
		case 5:
			text[0] = "I don't feel well...";
			break;
		case 6:
			text[0] = "HELP ME.";
			break;
		case 7:
			text[0] = "DISINTEGRATE.";
			break;
		case 8:
			text[0] = "Take me out of my misery!";
			break;
		case 9:
			text[0] = "Get out of here!";
			break;
		case 10:
			peaklaser.pause = 99999;
			text[0] = "What.";
			text[1] = "Did you just fix everything.";
			text[2] = "With that single circut.";
			text[3] = "...";
			text[4] = "Well, guess I'm all fixed now.";
			text[5] = "That means that you're useless now.";
			text[6] = "Goodbye!";
			break;
	}
}

if !active { exit; }

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
	if lines == 10 && !instance_exists(objEnd)
	{
		objBattery.death = true;
		instance_create_layer(x, y, "Instances", objEnd);
	}
}