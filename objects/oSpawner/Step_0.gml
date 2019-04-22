timer = timer + 1;
if(irandom(1000/spawnSpeed) == 1)
{
	instance_create_layer(x, y+48, "Instances_1", oEnemy);
}
if(timer == (30*60))
{
	spawnSpeed = spawnSpeed + 1;
	timer = 0;
}
