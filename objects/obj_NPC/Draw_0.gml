/// @Draw and animate

var anim_length = 9;
var anim_speed = 12;
var frame_size = 64;

if(move_x < 0) y_frame = 9;
else if(move_x > 0) y_frame = 11;
else if(move_y > 0) y_frame = 10;
else if(move_y < 0) y_frame = 8;
else
{
	x_frame = 0;
}

var xx = x - x_offset;
var yy = y - y_offset;

//DRAW SHADOW
draw_sprite(spr_character_shadow, 0, x, y);

//DRAW BASE
if(spr_base != -1) draw_sprite_part(spr_base, 0, floor(x_frame) * frame_size, y_frame * frame_size, frame_size, frame_size, xx, yy);

//DRAW FEET
if(spr_feet != -1) draw_sprite_part(spr_feet, 0, floor(x_frame) * frame_size, y_frame * frame_size, frame_size, frame_size, xx, yy);

//DRAW LEGS
if(spr_legs != -1) draw_sprite_part(spr_legs, 0, floor(x_frame) * frame_size, y_frame * frame_size, frame_size, frame_size, xx, yy);

//DRAW SHIRT
if(spr_shirt != -1) draw_sprite_part(spr_shirt, 0, floor(x_frame) * frame_size, y_frame * frame_size, frame_size, frame_size, xx, yy);

//DRAW HAIR
if(spr_hair != -1) draw_sprite_part(spr_hair, 0, floor(x_frame) * frame_size, y_frame * frame_size, frame_size, frame_size, xx, yy);

//Increment frame to animate
if(x_frame < anim_length - 1)
{
	x_frame += anim_speed/60;
}
else
{
	x_frame = 0;
}