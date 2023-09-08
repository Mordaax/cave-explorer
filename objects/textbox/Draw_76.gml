if (line =1)
{
	text ="Welcome! Click to Begin";
}
if (line =2)
{
	text = "Find the missing diamond among all the chests to win";
}
if (line =3)
{
	text = "First pick up the wand";
}
if (line=4)
{
	text="Shoot at the ghosts to kill them";
}
if (line=5)
{
	text ="Dont let the ghosts touch you or you will die";
}

if (line=6)
{
	text = "Shoot at the chests to open them";
}

if (line = 7)
{
	text = "Good luck finding the diamond";
}
if (instance_exists(player))
{
	if (line = 8)
	{
		player.start = true;
		instance_deactivate_object(textbox);
	}
	if (place_meeting(player.x,player.y,diamond))
	{
		instance_activate_object(textbox);
		text = "You Win with a time of "+ string(player.timetaken) +" seconds";
	}
}