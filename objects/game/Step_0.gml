/// @description
debug = (keyboard_check_direct(ord("R")));
if (keyboard_check_pressed(ord("R"))) game_restart();
if (keyboard_check_pressed(vk_escape)) game_end();