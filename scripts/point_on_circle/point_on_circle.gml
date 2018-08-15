///@description point_on_circle
///@arg axis
///@arg origin
///@arg angle_in_radians
///@arg radius

var ax = argument0;
var o = argument1;
var a = argument2;
var r = argument3;

if (ax == "x") {
	return o + r * cos(a);
}
else if (ax == "y") {
	return o + r * sin(a);
}