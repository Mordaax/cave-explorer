if (place_meeting(x,y,bullet))
{
	visible = true;
}
if (instance_exists(player))
{
	if (player.found = true)
	{
		time += 1;
	}

	if (time = 300)
	{
		game_end();
	}
}
if not(instance_exists(player))
{
	instance_destroy(diamond);
}