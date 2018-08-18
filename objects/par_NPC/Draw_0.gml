/// @description
var anim_length = 9;
var frame_size = 128;
var anim_speed = 8;

if (moveX < 0) {
	anim_length = 8;
	spr_base = spr_walk_left;
}
else if (moveX > 0) {
	anim_length = 8;
	spr_base = spr_walk_right;
}
else if (moveY > 0) {
	anim_length = 8;
	spr_base = spr_walk_down;
}
else if (moveY < 0) {
	anim_length = 4;
	spr_base = spr_walk_up;
}

var xx = x - x_offset;
var yy = y - y_offset;

//INCREMENT FRAME FOR ANIMATION
if ((x_frame + (anim_speed / 60) < anim_length) and idle == 0) x_frame += anim_speed / 60
else if ((x_frame + (anim_speed / 60) == anim_length) and idle == 0) x_frame = 1
else x_frame = 0;

//Draw Character shadow
shadow_angle(spr_base, floor(x_frame));

//DRAW CHARACTER BASE
draw_sprite_ext(spr_base, floor(x_frame), x, y, image_xscale, image_yscale, 0, c_white, 1);