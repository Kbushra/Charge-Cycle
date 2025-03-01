depth = objBattery.depth - 1;
y++;

draw_text_transformed_color(x, y, string_copy(bytes, _begin, _end), 0.5, 0.5, 0,
	c_teal, c_teal, c_teal, c_teal, 1);

typeTimer--;

if typeTimer <= 0
{
	if _begin == 1 { _end += 2; }
	else { _end -= 2; _begin += 2; }
	
	if _end > 16 { _begin += 2; }
	if _begin > 16 {instance_destroy(); }
	
	typeTimer = 10;
}

_end = clamp(_end, 1, 16);
_begin = clamp(_begin, 1, 16);