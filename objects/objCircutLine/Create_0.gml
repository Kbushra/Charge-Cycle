active = true;
image_index = joints-1;

var otherPossible = reqAngle;
if joints == 1 { otherPossible = reqAngle + 180; }
if joints == 4 { otherPossible = image_angle; }

correctState = image_angle == reqAngle || image_angle == otherPossible;
if correctState { global.correct++; }

if global.corrupted { sprite_index = sprCircutLineRed; }