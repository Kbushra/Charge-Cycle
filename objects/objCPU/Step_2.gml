creationTimer--;

if creationTimer <= 0
{
	instance_create_layer(random(683), random(384), "Instances", objBytes);
	creationTimer = random_range(30, 60);
}