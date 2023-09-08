if (gone ==0)
{

	if (place_meeting(x+hsp,y,wall))
	{
		while(!place_meeting(x+sign(hsp),y,wall))
		{
			x = x+sign(hsp);
		}
		hsp = 0;	
	}
	x = x + hsp;

	//gravity
	vsp = vsp + grv;

	if (place_meeting(x,y+vsp,wall))
	{
		if (vsp > 0) 
		{
			gone = 1;
			alarm[0] = 60;
		}
		while(!place_meeting(x,y+sign(vsp),wall))
		{
			y = y+sign(vsp);
		}
		vsp = 0;	
	}

	y = y + vsp;
}