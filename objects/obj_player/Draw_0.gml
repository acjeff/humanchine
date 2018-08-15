/// @description
var anim_length = 9;
var frame_size = 128;
var anim_speed = 8;

switch(facing) {
	case dir.left: {
		anim_length = 8;
		spr_base = spr_silas_walking_left;
		} break;
	case dir.right: {
		anim_length = 8;
		spr_base = spr_silas_walking_right;
		} break;
	case dir.down: {
		anim_length = 8;
		spr_base = spr_silas_walking_down;
		} break;
	case dir.up: {
		anim_length = 4;
		spr_base = spr_silas_walking_up;
		} break;
	case -1: break;
}

var xx = x - x_offset;
var yy = y - y_offset;

//INCREMENT FRAME FOR ANIMATION
if ((x_frame + (anim_speed / 60) < anim_length) and facing != -1) x_frame += anim_speed / 60
else if ((x_frame + (anim_speed / 60) == anim_length) and facing != -1) x_frame = 1
else x_frame = 0;

//var player_shadow_angle = shadow_angle();

//show_debug_message(player_shadow_angle);

shadow_angle(spr_base, floor(x_frame));

//draw_sprite_ext(spr_base, floor(x_frame), x , y, image_xscale, image_yscale, player_shadow_angle, c_black, 0.5);

//draw_sprite_pos(spr_base, floor(x_frame)

//DRAW CHARACTER BASE
draw_sprite_ext(spr_base, floor(x_frame), x, y, image_xscale, image_yscale, 0, c_white, 1);
//if (spr_base) draw_sprite_part(spr_base, 0, floor(x_frame) * frame_size, 0, frame_size, frame_size, xx, yy);

