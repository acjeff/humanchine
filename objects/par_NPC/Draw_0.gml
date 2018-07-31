/// @description
var anim_length = 9;
var frame_size = 128;
var anim_speed = 8;

if (moveX < 0) {
	anim_length = 9;
	spr_base = spr_silas_walking_left;
}
else if (moveX > 0) {
	anim_length = 9;
	spr_base = spr_silas_walking_right;
}
else if (moveY > 0) {
	anim_length = 9;
	spr_base = spr_silas_walking_down;
}
else if (moveY < 0) {
	anim_length = 5;
	spr_base = spr_silas_walking_up;
}

var xx = x - x_offset;
var yy = y - y_offset;

//INCREMENT FRAME FOR ANIMATION
if ((x_frame + (anim_speed / 60) < anim_length) and idle != 0) x_frame += anim_speed / 60
else if ((x_frame + (anim_speed / 60) == anim_length) and idle != 0) x_frame = 1
else x_frame = 0;

//DRAW CHARACTER SHADOW
if (spr_shadow) draw_sprite(spr_character_shadow, 0, x, y)

//DRAW CHARACTER BASE
if (spr_base) draw_sprite_part(spr_base, 0, floor(x_frame) * frame_size, 0, frame_size, frame_size, xx, yy);

//DRAW CHARACTER FEET
//if (spr_feet) draw_sprite_part(spr_feet, 0, floor(x_frame) * frame_size, y_frame * frame_size, frame_size, frame_size, xx, yy);

//DRAW CHARACTER LEGS
//if (spr_legs) draw_sprite_part(spr_legs, 0, floor(x_frame) * frame_size, y_frame * frame_size, frame_size, frame_size, xx, yy);

//DRAW CHARACTER SHIRT
//if (spr_torso) draw_sprite_part(spr_torso, 0, floor(x_frame) * frame_size, y_frame * frame_size, frame_size, frame_size, xx, yy);

//DRAW CHARACTER Hair
//if (spr_hair) draw_sprite_part(spr_hair, 0, floor(x_frame) * frame_size, y_frame * frame_size, frame_size, frame_size, xx, yy);