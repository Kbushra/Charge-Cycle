if !active { exit; }

if string_char_at(text[page], pos) == " "
{
	var count = 0;
	for (var letter = pos+1; letter < pos+20; letter++)
	{
		if string_char_at(text[page], letter) == " " { break; }
		count++;
		if count == 19 { count = 0; }
	}
	
	if char_counter + count > 24
	{
		char_counter = 0;
		text[page] = string_insert("\n ", text[page], pos);
	}
}