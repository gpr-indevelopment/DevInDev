instance_create_layer(x, y, "Instances_1", oEnemyDying);
if(irandom(10) == 1)
{
	y_check = y;
	while(place_meeting(x, y_check, oWall))
	{
		y_check = y_check - 1;
	}
	instance_create_layer(x, y_check, "Instances_1", oCoin1);	
}