if (instance_exists(follow))
{
	nextX = follow.x;
	nextY = follow.y;	
	if (follow.object_index == deadplayer)
	{
			x = nextX;
			y = nextY;
	}	
}

x += (nextX - x)/25;
y += (nextY - y)/25;

x = clamp(x,view_w_half,room_width-view_w_half)
y = clamp(y,view_h_half,room_height-view_h_half)

x += random_range(-shake_remain,shake_remain);
y += random_range(-shake_remain,shake_remain);
shake_remain = max(0,shake_remain-((1/shake_time)*shake_magnitude));

camera_set_view_pos(cam,x-view_w_half,y-view_h_half);




