/// @description Insert description here
// You can write your code in this editor

event_inherited();

w_spd = 1;
n_spd = 2;
r_spd = 3;
spd = n_spd;

x_frame = 1;
y_frame = 0;

x_offset = sprite_get_xoffset(mask_index);
y_offset = sprite_get_yoffset(mask_index);

anim_length = -1;
left_length = 6;
right_length = 8;
down_length = 6;
up_length = 4;

spr_walk_up = spr_silas_walking_up;
spr_walk_down = spr_silas_walking_down;
spr_walk_left = spr_silas_walking_left;
spr_walk_right = spr_silas_walking_right;
spr_base = spr_walk_down;

spr_shadow = spr_character_shadow;

facing = 0;

portrait_index = 2;
voice = snd_voice1;
name = "Player";

radius = 32;
active_textbox = noone;