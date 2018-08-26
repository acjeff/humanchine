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


spr_shadow = spr_character_shadow;

spr_walk_left = -1;
spr_walk_right = -1;
spr_walk_up = -1;
spr_walk_down = -1;


moveX = 0;
moveY = 0;
can_move = true;

alarm[1] = 1;

portrait_index = 0;
voice = snd_voice1;
name = "Anonymous";
text = ["This person has nothing to say."];
speakers = [id];
