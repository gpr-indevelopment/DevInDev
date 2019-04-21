vspd = vspd + grv_y;
hspd = hspd - grv_x;
deathTimer = deathTimer-1;

if(deathTimer < 45)
{
	sprite_index = sBombExploding;
	if(deathTimer < 0)
	{
		instance_create_layer(x, y, "Instances_1", oBombE);
		instance_destroy();
	}
	
}
if(hspd == 0)
{
	hspd = 0;
	grv_x = 0;
}
if(place_meeting(x+hspd, y, oWall))
{
	while(!place_meeting(x+sign(hspd), y, oWall))
	{
		x = x + sign(hspd);
	}
}
else
{
	x = x + hspd;
}

if(place_meeting(x, y + vspd, oWall))
{
	while(!place_meeting(x, y + sign(vspd), oWall))
	{
		y = y + sign(vspd);
	}
	vspd = vspd/2 * -1;
}
else
{
	y = y + vspd;
}

