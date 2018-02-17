/// @Initialize variables
x_frame = 0;
y_frame = 9;

x_offset = sprite_get_xoffset(mask_index);
y_offset = sprite_get_yoffset(mask_index);

move_x = 0;
move_y = 0;

spd = 1;
normSpd = 2;
walkSpd = 1;
runSpd = 3;

COLLISION = false;

facing = -1;

spr_base = spr_body_male_light;
spr_feet = spr_feet_shoes_male_black;
spr_hair = spr_hair_male_bedhead_brown;
spr_shirt = spr_torso_male_longsleeve_maroon;
spr_legs = spr_legs_male_pants_red;