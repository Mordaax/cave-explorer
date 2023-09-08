
//animation
if (!place_meeting(x,y+1,wall)) and (hsp>0)
{
	sprite_index = prightjump;
}
if (!place_meeting(x,y+1,wall)) and (hsp<0)
{
	sprite_index = pleftjump;
}

else if (hsp >0)
{
	sprite_index = prightwalk;

}

else if(hsp <0)
{
	sprite_index = pleftwalk;

}

else if(hsp = 0) 
{
	sprite_index = sprplayer;
}
if (found =false) and (start = true)
{
	timetaken += 1/20;
}




