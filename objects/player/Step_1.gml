key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
key_jump = keyboard_check(vk_space) || keyboard_check(ord("W"));

var move = key_right - key_left;

// Horizonal movement
hsp = move * walksp;
if (place_meeting(x+hsp,y,wall))
{
	while(!place_meeting(x+sign(hsp),y,wall))
	{
		x = x+sign(hsp);
	}
	hsp = 0;	
}
x = x + hsp;

// vertical movement
if (place_meeting(x,y+1,wall)) and (key_jump)
{
		vsp = -9;
		
}
if (place_meeting(x,y+1,spring)) and (key_jump)
{
	vsp = -15;
	audio_play_sound(soundspring,7,false);
}
//gravity
vsp = vsp + grv

if (place_meeting(x,y+vsp,wall))
{
	while(!place_meeting(x,y+sign(vsp),wall))
	{
		y = y+sign(vsp);
	}
	vsp = 0;	
}

y = y + vsp;

if (place_meeting(x,y,wall))
{
	y-=1;
}