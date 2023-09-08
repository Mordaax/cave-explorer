if (place_meeting(x,y,player))
{
   x = player.x - 6.5;
   y = player.y;
}


firingdelay = firingdelay -1;
//recoil = max(0,recoil-1);
if (instance_exists(player))
{
	if (mouse_check_button(mb_left)) and (firingdelay <0) and (x = player.x-6.5)
	{
		recoil = 4;
		firingdelay = 10;
		shake(2,10);
		audio_play_sound(bulletsound,5, false);
		with (instance_create_layer(x,y,"bullet",bullet))
		{
			speed = 15;
			direction = point_direction(x,y,mouse_x,mouse_y)+ random_range(-3,3);
		}
	
	}
}

//x =x - lengthdir_x(recoil,point_direction(x,y,mouse_x,mouse_y));  //recoil
//y =y - lengthdir_x(recoil,point_direction(x,y,mouse_x,mouse_y));  //recoil