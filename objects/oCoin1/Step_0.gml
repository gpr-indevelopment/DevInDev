vspd = vspd + grv;
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