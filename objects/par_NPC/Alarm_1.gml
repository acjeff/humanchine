/// @description
show_debug_message("Run random walk alarm");

if (hitWall == 0) {
	show_debug_message("Move NPC in random direction");
	moveX = 0;
	moveY = 0;
	idle = choose(0,1);
	if (idle != 0) {
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
	if(moveX < 0) moveX = spd;
	else if (moveX > 0) moveX = -spd;
	else if (moveY < 0) moveY = spd;
	else if (moveY > 0) moveY = -spd;
}

alarm[1] = random_range(2.5, 4) * room_speed;