/// @Movement

input_left = keyboard_check(vk_left);
input_right = keyboard_check(vk_right);
input_up = keyboard_check(vk_up);
input_down = keyboard_check(vk_down);
input_walk = keyboard_check(vk_control);
input_run = keyboard_check(vk_shift);

//ALTER SPEED
if(input_walk or input_run)
{
	spd = abs((input_walk * walkSpd) - (input_run * runSpd));
}
else
{
	spd = normSpd;
}

//RESET MOVE VARIABLES
move_x = 0;      
move_y = 0;

//INTENDED MOVEMENT
move_x = (input_right - input_left) * spd;
if(move_x == 0)
{
	move_y = (input_down - input_up) * spd;
}

//Get DIRECTION PLAYER FACING
if(move_x != 0)
{
	switch(sign(move_x))
	{
		case 1: facing = dir.right; break;
		case -1: facing = dir.left; break;
	}
}
else if(move_y != 0)
{
	switch(sign(move_y))
	{
		case 1: facing = dir.down; break;
		case -1: facing = dir.up; break;
	}
}
else
{
	facing = -1;
}
//COLLISION CHECKS
if(move_x != 0){
	if(place_meeting(x + move_x, y, obj_collision)){
		repeat(abs(move_x)){
			if(!place_meeting(x+sign(move_x), y, obj_collision)){
				x += sign(move_x);
			}
			else { break; }					
		}
		move_x = 0;
	}
}

if(move_y != 0){
	if(place_meeting(x, y + move_y, obj_collision)){
		repeat(abs(move_y)){
			if(!place_meeting(x, y + sign(move_y), obj_collision)){
				y += sign(move_y);
			}
			else { break; }					
		}
		move_y = 0;
	}
}

//Room Transitions
var inst = instance_place(x,y,obj_transition);
if(inst != noone and facing == inst.playerFacingBefore)
{
	with(game){ 
		if(!doTransition)
		{
			spawnRoom = inst.targetRoom;
			spawnX = inst.targetX;
			spawnY = inst.targetY;
			spawnPlayerFacing = inst.playerFacingAfter;
			doTransition = true;
		}
	}
}

//APPLY MOVEMENT
x += move_x;
y += move_y;