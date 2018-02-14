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

//DRAW BASE
draw_sprite_part(spr_base, 0, floor(x_frame) * frame_size, y_frame * frame_size, frame_size, frame_size, xx, yy);

//DRAW FEET
draw_sprite_part(spr_feet, 0, floor(x_frame) * frame_size, y_frame * frame_size, frame_size, frame_size, xx, yy);

//DRAW LEGS
draw_sprite_part(spr_legs, 0, floor(x_frame) * frame_size, y_frame * frame_size, frame_size, frame_size, xx, yy);

//DRAW SHIRT
draw_sprite_part(spr_shirt, 0, floor(x_frame) * frame_size, y_frame * frame_size, frame_size, frame_size, xx, yy);

//DRAW HAIR
draw_sprite_part(spr_hair, 0, floor(x_frame) * frame_size, y_frame * frame_size, frame_size, frame_size, xx, yy);


if(x_frame < anim_length - 1)
{
	x_frame += anim_speed/60;
}
else
{
	x_frame = 0;
}


draw_rectangle_color(bbox_left, bbox_top, bbox_right, bbox_bottom, c_yellow, c_yellow, c_yellow, c_yellow,true);