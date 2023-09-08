if (instance_exists(player))
{
	draw_sprite(sprtextbox,1,player.x -32,player.y -128);
	draw_set_font(arialBaltic);
	draw_set_color(c_black);
	draw_text_ext(player.x -32,player.y -128,text,20,160);
}

//maketext(text);