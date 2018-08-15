/// @description 
global.debug = false;
randomize();
room_goto_next();

global.shadowOpacity = 0;

blackAlpha = 0;

spawnRoom = -1;
spawnX = 0;
spawnY = 0;
spawnPlayerFacing = -1;
doTransition = false;

enum dir {
	right = 0,
	up = 90,
	left = 180,
	down = 270
}

global.timeOfDay = "daytime";
global.seconds = 0;
global.hours = 0;
global.minutes = 0;

global.day = 0;
global.season = 0;
global.year = 0;

global.game_width = 750;
global.game_height = 420;

display_set_gui_size(global.game_width, global.game_height);