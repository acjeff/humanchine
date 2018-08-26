/// @description 

event_inherited();

spr_walk_up = spr_dr_mccoy_walking_up;
spr_walk_down = spr_dr_mccoy_walking_down;
spr_walk_left = spr_dr_mccoy_walking_left;
spr_walk_right = spr_dr_mccoy_walking_right;

spr_base = spr_walk_down;

portrait_index = 3;
voice = snd_voice4;
name = "Dr. McCoy";
text = ["Hey Silas, just got an email saying that your new arm just arrived! Exciting stuff! Why don't you head down to the depot to collect it.", "Be careful though, I've been hearing things about stray dogs in the area, best to take your brother with you just to make sure...", "Sure thing! Doubt he'll come though, haven't seem him leave his bunker for days!"];
speakers = [id, id, obj_player];