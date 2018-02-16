
if(doTransition)
{
	//Handle Black Fade/Room Transition
	if(room != spawnRoom)
	{
		blackAlpha += fadeSpeed;
		if(blackAlpha >= 1)
		{
			room_goto(spawnRoom);
		}
	}
	else
	{
		blackAlpha -= fadeSpeed;
		if(blackAlpha <= 0)
		{
			doTransition = false;
		}
	}
	
	//Draw Black Fade
	draw_set_alpha(blackAlpha);
	draw_rectangle_colour(0, 0, guiWidth, guiHeight, c_black, c_black, c_black, c_black, false);
	draw_set_alpha(1);
}