pos = 0;
page = 0;
active = true;
char_counter = 0;
dialogueTimer = 120;

switch lines
{
	case -1:
		text[0] = choose("Died? Seriously?", "Bruh.", "Wow. This is just sad.", "Hired for nothing.");
		break;
	case 0:
		text[0] = "Hello.";
		text[1] = "I've hired you to fix my innards.";
		text[2] = "...";
		text[3] = "What are you waiting for? Get on with it.";
		text[4] = "I have 5 billion processes awaiting.";
		break;
	case 1:
		text[0] = "Im sure you can do something as mundane as completing a circut.";
		break;
	default:
		text[0] = "...";
		break;
}