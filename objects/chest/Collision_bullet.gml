instance_destroy(bullet);
if (open=0)
	{
		sprite_index = sprochest;
		open += 1;
		audio_play_sound(openchest,8,false);
	}
else if (open=1)
	{
		sprite_index = sprcchest;
		open -= 1;
		audio_play_sound(openchest,8,false);
	}