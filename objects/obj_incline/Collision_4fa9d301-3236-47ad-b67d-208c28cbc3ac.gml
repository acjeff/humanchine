/// @description Insert description here
// You can write your code in this editor

show_debug_message(direction_of_slope);

	switch(obj_player.facing) {
	case dir.left: {
		obj_player.frozen = -1;
		show_debug_message("left");
		if (direction_of_slope == "left") {
			obj_player.y += amount_to_move_down
		}
		else {
			obj_player.y -= amount_to_move_down
		}
		
		} break;
	case dir.right: {
		obj_player.frozen = -1;
		show_debug_message("right");
		
		if (direction_of_slope == "left") {
			obj_player.y -= amount_to_move_down
		}
		else {
			obj_player.y += amount_to_move_down
		}
		
		} break;
	case dir.up: {
			obj_player.frozen = 1;
			obj_player.facing = -1
		} break;
	case dir.down: {
			obj_player.frozen = 1;
			obj_player.facing = -1
		} break;
	}
	
