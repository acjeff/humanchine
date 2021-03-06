/// @description
switch(facing) {
	case dir.left: {
		anim_speed = 8;
		anim_length = left_length;
		spr_base = spr_walk_left;
		} break;
	case dir.right: {
		anim_speed = 8;
		anim_length = right_length;
		spr_base = spr_walk_right;
		} break;
	case dir.down: {
		anim_length = down_length;
		spr_base = spr_walk_down;
		anim_speed = 12;
		} break;
	case dir.up: {
		anim_length = up_length;
		spr_base = spr_walk_up;
		anim_speed = 12;
		} break;
	case -1: break;
}

var xx = x - x_offset;
var yy = y - y_offset;

if (climbing) {
	anim_speed = 12;
	anim_length = climbing_length;
	spr_base = spr_climbing;
}

//INCREMENT FRAME FOR ANIMATION

if ((floor(x_frame + (anim_speed / 60)) < anim_length) and facing != -1) x_frame += anim_speed / 60
else if ((floor(x_frame + (anim_speed / 60)) >= anim_length) and facing != -1) {
	if (!climbing) {
		x_frame = 1;
	}
	else {
		x_frame = 0;
	}
}
else {
	if (!climbing) {
		x_frame = 0;
	}
}

//Draw Character shadow
//shadow_angle(spr_base, floor(x_frame));

//DRAW CHARACTER BASE
draw_sprite_ext(spr_base, floor(x_frame), x, y, image_xscale, image_yscale, 0, c_white, 1);


