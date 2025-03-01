bytes = "";

for (var i = 0; i < 8; i++)
{
	bit = choose("0", "1");
	bytes += bit;
	bytes += "\n";
}

_begin = 1;
_end = 1;

typeTimer = 10;