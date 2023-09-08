function maketext(argument0) {
	draw_set_font(fonttext)
	draw_set_colour(c_green)
	text = argument0 
	if (instance_exists(player))
	{
		draw_text_ext(player.x-32,player.y-128,text,string_height(text),150)
	}


}
