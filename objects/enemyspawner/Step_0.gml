if (timer = 0)
{
	instance_create_layer(x,y,enemy,enemy);
	timer +=1800;
}

else
{
	timer -=1;
}