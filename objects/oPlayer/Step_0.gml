/// @description Insert description here
// You can write your code in this editor
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);

var move = key_right - key_left;
hsp = move * walksp;
vsp = vsp + grv;

if(place_meeting(x, y+1, oWall) and key_jump)
{
	vsp = -12;
}


if(place_meeting(x+hsp, y, oWall))
{
	while(!place_meeting(x+sign(hsp), y, oWall))
	{
		x = x + sign(hsp);
	}
}
else
{
	x = x + hsp;
}

if(place_meeting(x, y + vsp, oWall))
{
	while(!place_meeting(x, y + sign(vsp), oWall))
	{
		y = y + sign(vsp);
	}
}
else
{
	y = y + vsp;
}



