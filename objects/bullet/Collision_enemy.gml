with(other)
{
	enemy_health-= 1;
	flash = 3;
	hitfrom = other.direction;
	
}

instance_destroy();
