/// @description Insert description here
// You can write your code in this editor

event_inherited();

w_spd = 1;
n_spd = 2;
r_spd = 3;
spd = w_spd;


hitWall = 0;
idle = 0;

x_frame = 1;
y_frame = 0;

x_offset = sprite_get_xoffset(mask_index);
y_offset = sprite_get_yoffset(mask_index);

spr_base = -1;
spr_shadow = spr_character_shadow;

spr_walk_left = spr_silas_walking_left;
spr_walk_right = spr_silas_walking_right;
spr_walk_up = spr_silas_walking_up;
spr_walk_down = spr_silas_walking_down;

moveX = 0;
moveY = 0;
can_move = true;

alarm[1] = 1;

portrait_index = 0;
voice = snd_voice1;
name = "Anonymous";
text = ["This person has nothing to say."];
speakers = [id];
