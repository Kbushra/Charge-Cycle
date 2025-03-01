pause -= spd;
if pause > 0 { exit; }

if image_angle < maxAngle && up { image_angle += spd; }
else if up { up = false; pause = 60; }

if image_angle > minAngle && !up { image_angle -= spd; }
else if !up { up = true; pause = 60; }

laser.image_angle = image_angle;