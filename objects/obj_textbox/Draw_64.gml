//Draw Box
//draw_sprite(box, 0, 10, 200);

//Draw portrait back
//draw_sprite(frame, 0, port_x, port_y);

draw_set_alpha(0.9);
draw_rectangle_color(0, port_y - 10, display_get_gui_width(), display_get_gui_height(), c_black, c_black, c_black, c_black, false);
draw_set_alpha(1);
//Draw Portrait
//draw_sprite(portrait, portrait_index, port_x, port_y);
draw_sprite_ext(portrait, portrait_index, port_x, port_y, 0.5, 0.5, 0, c_white, 1);

//Draw portrait frame
//draw_sprite(frame, 1, port_x, port_y);

//Draw name box
//draw_sprite(namebox, 0, namebox_x, namebox_y);

//Text
draw_set_font(font);
//Draw name
draw_set_font(fnt_text_bold);
var c = name_text_col;
draw_set_halign(fa_left); draw_set_valign(fa_top);
//draw_text_color(text_x, port_y + 7, name, c, c, c, c, 1);
draw_text_transformed(text_x, port_y + 7, name, 0.5, 0.5, 0)
draw_set_halign(fa_left); draw_set_valign(fa_top);

//Draw text
if (!pause and counter < str_len) {
	counter++;
	if (counter mod 4 == 0) {
		audio_play_sound(voice, 10, false);
	}
	
	switch (string_char_at(text_wrapped, counter)) {
		case ",": pause = true; alarm[1] = 15; break;
		case "!": 
		case "?": 
		case ".":  pause = true; alarm[1] = 25; break;
	}
	
}


var substr = string_copy(text_wrapped, 1, counter);


c = text_col;
draw_set_font(fnt_text_12);
//draw_text_color(text_x, port_y + 30, substr, c, c, c, c, 1);
draw_text_transformed(text_x, port_y + 30, substr, 0.5, 0.5, 0)