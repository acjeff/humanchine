box = spr_textbox;
frame = spr_portrait_frame;
portrait = spr_portraits;
namebox = spr_namebox;

box_width = sprite_get_width(box);
box_height = sprite_get_height(box);
port_width = sprite_get_width(portrait);
port_height = sprite_get_height(portrait);
namebox_width = sprite_get_width(namebox);
namebox_height = sprite_get_height(namebox);

port_x = (global.game_width - box_width - 128) * 0.5;
port_y= (global.game_height * 0.98) - 128;
box_x = port_x + 128;
box_y = port_y;
namebox_x = port_x;
namebox_y = box_y - namebox_height;

x_buffer = 12;
y_buffer = 8;
text_x = box_x + x_buffer;
text_y = box_y + y_buffer;
name_text_x = namebox_x + (namebox_width / 2);
name_text_y = namebox_y + (namebox_height / 2);
text_max_width = 800;

portrait_index = 0;
counter = 0;
pause = false;

voice = snd_voice1; 

text[0] = "Silas, you must go to the Post Depo to collect a new prosthetic!";
text[1] = "Please be careful, be sure to avoid the cave on the way...";
page = 0;
name = "name"

interact_key = ord("E"); 

text_col = c_black;
name_text_col = c_black;
font = fnt_text_12;

draw_set_font(font);
text_height = string_height("M");

