if (can_move) {

	if (hitWall == 0) {
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