/// @description 

if (!collidable) exit;

if(moveX < 0) x += 1
else if (moveX > 0) x -= 1
else if (moveY < 0) y += 1
else if (moveY > 0) y -= 1
hitWall = 1;
alarm[1] = 1;