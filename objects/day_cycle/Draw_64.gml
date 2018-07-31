if (draw_daylight) {
	var c = light_colour;
	draw_set_alpha(darkness);
	draw_rectangle_color(0, 0, guiWidth, guiHeight, c, c, c, c, false);
	draw_set_alpha(1);
}
	var c = c_yellow;
	draw_text_color(10, 10, "Seconds: " + string(seconds), c, c, c, c, 1);
	draw_text_color(10, 30, "Minutes: " + string(minutes), c, c, c, c, 1);
	draw_text_color(10, 50, "Hours: " + string(hours), c, c, c, c, 1);
	draw_text_color(10, 70, "Day: " + string(day), c, c, c, c, 1);
	draw_text_color(10, 90, "Season: " + string(season), c, c, c, c, 1);
	draw_text_color(10, 110, "Year: " + string(year), c, c, c, c, 1);