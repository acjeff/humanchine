//-------UPDATE INPUT
if (global.show_inventory) exit;
input_left = keyboard_check(ord("A"));
input_right = keyboard_check(ord("D"));
input_up = keyboard_check(ord("W"));
input_down = keyboard_check(ord("S"));
input_walk = keyboard_check(vk_control);
input_run = keyboard_check(vk_shift);
input_interact = keyboard_check_pressed(ord("E"));


//ALTER SPEED
if (!climbing) {
	spd = n_spd;
}
else {
	spd = w_spd;
}


//RESET MOVE VARIABLES
moveX = 0;
moveY = 0;

//INTENDED MOVEMENT
if (input_right or input_left) moveX = (input_right - input_left) * spd;
else if (input_down or input_up) moveY = (input_down - input_up) * spd;

//GET DIRECTION PLAYER IS FACING
if (moveX != 0) {
	switch(sign(moveX)) {
		case 1: facing = dir.right; break;
		case -1: facing = dir.left; break;
	}
}
else if (moveY != 0) {
	switch(sign(moveY)) {
		case -1: facing = dir.up; break;
		case 1: facing = dir.down; break;
	}
} else {
	facing = -1;
}

//COLLISION CHECKS
//Horizontal
if (moveX != 0) {
	var collisionH = instance_place(x + moveX, y, obj_collision);
	if (collisionH != noone and collisionH.collidable) {
		repeat(abs(moveX)) {
			if (!place_meeting(x + sign(moveX), y, obj_collision)) x += sign(moveX)
			else break;
		}
		moveX = 0;
	}
}

//Verticle
if (moveY != 0) {
	var collisionV = instance_place(x, y + moveY, obj_collision);
	if (collisionV != noone and collisionV.collidable) {
		repeat(abs(moveY)) {
			if (!place_meeting(x, y + sign(moveY), obj_collision)) y += sign(moveY)
			else break;
		}
		moveY = 0;
	}
}

//Objects
var inst = instance_place(x, y, obj_transition);
if (inst != noone && facing == inst.playerFacingBefore) {
	with(game) {
		if (!doTransition) {
			spawnRoom = inst.targetRoom;
			spawnX = inst.targetX;
			spawnY = inst.targetY;
			spawnPlayerFacing = inst.playerFacingAfter;
			doTransition = true;
		}
	}
}

//Textbox
if(input_interact) {
	
	if (active_textbox == noone) {
		var inst = collision_rectangle(x-radius, y-radius, x+radius, y+radius, par_NPC, false, false);
	
		if (inst != noone) {
			with(inst) {
				var tbox = create_textbox(text, speakers);
				can_move = false;
				moveX = 0;
				moveY = 0;
				idle = true;
				
				if (abs(x - obj_player.x) > abs(y - obj_player.y)) {
					if (obj_player.x > x) spr_base = spr_walk_right;
					else if (obj_player.x < x) spr_base = spr_walk_left;
				}
				else if (abs(y - obj_player.y) > abs(x - obj_player.x)) { 
					if (obj_player.y > y) spr_base = spr_walk_down;
					else if (obj_player.y < y) spr_base = spr_walk_up;
				}
				
				
			}
			active_textbox = tbox;
	
		}
	} else {
		if(!instance_exists(active_textbox)) {
			active_textbox = noone;
		}
	}
}

//APPLY MOVEMENT
x += moveX;
y += moveY;

if (input_left or input_right or input_up or input_down) {
	//the player is moving
} else {
	//the player is NOT moving
}