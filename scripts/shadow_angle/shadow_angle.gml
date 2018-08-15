///@description shadow_angle
///@arg sprite
///@arg subimg

var shadowAngle;

var total_degrees = 210;
var total_seconds_in_day = 86400;

var second_as_degree = total_degrees / total_seconds_in_day;

var seconds_through_day = global.seconds / global.day;

var degree_of_shadow = (global.seconds * second_as_degree) - total_degrees;

if (degree_of_shadow > -90 and degree_of_shadow < 90)  shadowAngle = degree_of_shadow;
else shadowAngle = 0;

var angle_in_radians = degree_of_shadow * (pi / 180);
var angle_in_radians2 = (degree_of_shadow + 30) * (pi / 180);
var angle_in_radians3 = (degree_of_shadow - 90) * (pi / 180);
var angle_in_radians4 = (degree_of_shadow + 90) * (pi / 180);

//show_debug_message(pi);
//show_debug_message(degree_of_shadow);
//show_debug_message(angle_in_radians);

var spriteWidth = sprite_get_width(argument0);
var spriteHeight = sprite_get_height(argument0);
var offsetW = spriteWidth / 2; 
var offsetH = spriteHeight / 2; 


var org_x = x - (spriteWidth / 2);
var org_y = y - spriteHeight;


if (angle_in_radians < -3.14) angle_in_radians = -3.14;
var x1 = (point_on_circle("x", x, angle_in_radians, spriteHeight));
var y1 = (point_on_circle("y", y, angle_in_radians, spriteHeight));

if (angle_in_radians2 > 0) angle_in_radians2 = 0;
var x2 = (point_on_circle("x", x, angle_in_radians2, spriteHeight));
var y2 = (point_on_circle("y", y, angle_in_radians2, spriteHeight));

//if (angle_in_radians4 > -0.2) angle_in_radians4 = -0.2;
//var x3 = (point_on_circle("x", x, angle_in_radians4, spriteWidth / 2));
//var y3 = (point_on_circle("y", y, angle_in_radians4, spriteWidth / 2));

var x3 = x + (spriteWidth / 2);
var y3 = y;


//if (angle_in_radians3 < -3.35) angle_in_radians3 = -3.41;
//var x4 = (point_on_circle("x", x , angle_in_radians3, spriteWidth / 2));
//var y4 = (point_on_circle("y", y, angle_in_radians3, spriteWidth / 2));

var x4 = x - (spriteWidth / 2);
var y4 = y;


if (global.debug) {
	
	draw_rectangle_color(x1, y1, x1 + 5, y1 + 5, c_red, c_red, c_red, c_red, false);
	draw_rectangle_color(x2, y2, x2 + 5, y2 + 5, c_blue, c_blue, c_blue, c_blue, false);

	draw_set_font(fnt_small_digits);

	draw_text(x1, y1, angle_in_radians);
	draw_rectangle_color(x3, y3, x3 + 5, y3 + 5, c_green, c_green, c_green, c_green, false);

	draw_text(x2 - 30, y2, angle_in_radians2);
	draw_rectangle_color(x4, y4, x4 + 5, y4 + 5, c_purple, c_purple, c_purple, c_purple, false);

	draw_circle(x, y, spriteHeight, true);
	draw_circle(x, y, spriteWidth / 2, true);
	
	
	draw_text(x - 60, y - 140, string(global.timeOfDay) + " so make shadow = " + string(global.shadowOpacity));
	
}

var opacity = abs(angle_in_radians);


//sunrise
if (global.timeOfDay = "sunrise") global.shadowOpacity += 0.005;

//day
//else if (global.timeOfDay = "daytime") global.shadowOpacity = global.shadowOpacity;

//sunset

else if (global.timeOfDay = "sunset") global.shadowOpacity -= 0.005;


else if (global.timeOfDay = "nighttime") global.shadowOpacity = 0;

if (global.shadowOpacity > 0.14) global.shadowOpacity = 0.14;
else if (global.shadowOpacity < 0) global.shadowOpacity = 0;


if (global.timeOfDay != "nighttime") {
	gpu_set_fog(true, c_black, 0, 1);
	var shadow = draw_sprite_pos(argument0, argument1, x1, y1, x2, y2, x3, y3, x4, y4, global.shadowOpacity);
	gpu_set_fog(false, c_white, 0, 0);
	return shadow;
}



//return draw_sprite_ext(argument0, argument1, x , y, image_xscale, image_yscale, shadowAngle, c_black, 0.5);