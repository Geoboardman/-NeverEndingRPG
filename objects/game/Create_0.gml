debug = false;
randomize();
room_goto_next();

guiWidth = display_get_gui_width();
guiHeight = display_get_gui_height();

blackAlpha = 0;
fadeSpeed = 0.1;

spawnRoom = -1;
doTransition = false;
spawnX = 0;
spawnY = 0;
spawnPlayerFacing = -1;

enum dir{
	right = 0,
	up =   90,
	left = 180,
	down = 270
}