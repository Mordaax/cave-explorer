function shake(argument0, argument1) {
	with (camera)
	{
		if (argument0 > shake_remain)
		{
			shake_magnitude = argument0;
			shake_remain = argument0;
			shake_time = argument1;
		}
	
	}


}
