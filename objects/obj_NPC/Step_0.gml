/// @Movement

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

//APPLY MOVEMENT
x += move_x;
y += move_y;