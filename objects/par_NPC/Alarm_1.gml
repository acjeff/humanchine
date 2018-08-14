/// @description
show_debug_message("Run random walk alarm");

if (can_move) {

	if (hitWall == 0) {
		show_debug_message("Move NPC in random direction");
		moveX = 0;
		moveY = 0;
		idle = choose(0,1);
		if (idle == 0) {
			var dir = choose(1,2,3,4);
			switch(dir) {
				case 1: moveX = -spd; break;
				case 2: moveX = spd; break;
				case 3: moveY = spd; break;
				case 4: moveY = -spd; break;
			}
		}
	}
	else {
		hitWall = 0;
		show_debug_message("hit wall so move away from it");
		show_debug_message(string(moveX) + " move x");
		show_debug_message(string(moveY) + " move y");
	
		var dir;
	
		if(moveX < 0) dir = choose(2, 3, 4, 5);
		else if (moveX > 0) dir = choose(1, 3, 4, 5);
		else if (moveY < 0) dir = choose(1, 2, 4, 5);
		else if (moveY > 0) dir = choose(1, 2, 3, 5);
		else dir =  choose(1, 2, 3, 4, 5);
		moveX = 0;
		moveY = 0;
	
		switch(dir) {
			case 1: moveX = -spd; break;
			case 2: moveX = spd; break;
			case 3: moveY = spd; break;
			case 4: moveY = -spd; break;
			case 5: idle = 1; break;
		}
	}
}

alarm[1] = random_range(2.5, 4) * room_speed;