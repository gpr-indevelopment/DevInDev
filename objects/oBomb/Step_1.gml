firingDelay = firingDelay - 1;

if(mouse_check_button(mb_left) && firingDelay < 0)
{
	firingDelay = 45;
	with(instance_create_layer(x, y-3, "Instances_1", oBombR))
	{
	}
}