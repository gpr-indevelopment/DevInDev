/// @description Insert description here
// You can write your code in this editor
key_left = keyboard_check(vk_left) || keyboard_check(ord("A"))
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"))
key_jump = keyboard_check_pressed(vk_space);

var move = key_right - key_left;
hsp = move * walksp;
vsp = vsp + grv;

if(place_meeting(x, y+1, oWall) and key_jump)
{
	audio_play_sound(playerJump, 1, false);
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
	vsp = 0;
}
else
{
	y = y + vsp;
}
if(move != 0)
{
	sprite_index = sPlayerR;
	if(sign(hsp) > 0) image_xscale = 1; if(sign(hsp) < 0) image_xscale = -1;
}
else
{
	sprite_index = sPlayer;
}
timer = timer + 1;
if(timer == (10*60))
{
	spawnSpeed = spawnSpeed + 1;
	timer = 0;
	instance_create_layer(0, 768-(spawnSpeed-1)*32, "Instances_1", oDifficulty);
}






