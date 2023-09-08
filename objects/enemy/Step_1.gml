if (enemy_health <=0)
{
	with(instance_create_layer(x,y,layer,deadEnemy))
	{
		direction = other.hitfrom;
		hsp = lengthdir_x(3,direction);
		vsp = lengthdir_y(3,direction);
	}	
	instance_destroy();
}