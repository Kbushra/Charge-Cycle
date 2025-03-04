pos = 0;
page = 0;
active = true;
char_counter = 0;
dialogueTimer = 120;
creationTimer = random_range(30, 60);

endText = false;

switch lines
{
	case -1:
		text[0] = choose("Died? Seriously?", "Bruh.", "Wow. This is just sad.", "Hired for nothing.");
		break;
	case 0:
		text[0] = "Hello.";
		text[1] = "I've hired you to repair my components.";
		text[2] = "I keep crashing, so I hope you could fix that.";
		text[3] = "...";
		text[4] = "What are you waiting for? Get on with it.";
		text[5] = "I have 5 billion processes awaiting, and the big guy isn't patient.";
		break;
	case 1:
		text[0] = "Im sure you can do something as mundane as powering a circuit.";
		text[1] = "Just move with WASD or arrows. How do you not know this?";
		text[2] = "(Btw if you could create some new tiling for me that would be nice)";
		break;
	case 2:
		text[0] = "For these circuits you need to swap some around.";
		text[1] = "Press Z when on one to swap it.";
		text[2] = "I mean, you should know that since it was on the interview.";
		text[3] = "But whatever.";
		break;
	case 3:
		text[0] = "Well, this place doesn't seem the nicest...";
		break;
	case 4:
		text[0] = "How do you get past this?";
		text[1] = "I can't even SEE the way around.";
		break;
	case 5:
		objBattery.percentLoss = 240;
		objBattery.image_index = 2;
		text[0] = "Oops, I forgot to charge you...";
		text[1] = "...DO it anyway.";
		break;
	case 6:
		text[0] = "GET OUT! ILL KILL YOU!";
		text[1] = "WHAT? WHATS HAPPENING? I DONT KNOW HHAHAHAHAHAH!";
		break;
	case 7:
		text[0] = "WARNING: OVERHEATING, OVERWORKED.";
		text[1] = "ELEMINATING LARGE STORAGE FILES.";
		break;
	case 8:
		text[0] = "TARGET NEARING MAIN CORE.";
		text[1] = "CLEAN UP PROCESS INITIATED.";
		text[2] = "TARGET CORNERED.";
		break;
	case 9:
		text[0] = "So many lasers...";
		text[1] = "I'm burning myself alive...";
		break;
	case 10:
		text[0] = "We're already here?";
		text[1] = "Well, I guess this is the part where I kill you.";
		text[2] = "I'm sorry, but you're taking a toll on my cooling system.";
		break;
	case 11:
		text[0] = "Urghh, I feel A BIT HOTTT... SF10";
		break;
	default:
		text[0] = "...";
		break;
}