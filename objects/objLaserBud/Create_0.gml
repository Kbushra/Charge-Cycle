depth = objBattery.depth + 3;
pause = 0;

laser = instance_create_layer(x, y, "Hazards", objLaserLight);
laser.image_angle = image_angle;
laser.image_yscale = 9999;
laser.depth = depth + 1;

if up { image_angle = minAngle; }
else { image_angle = maxAngle; }