/// @description
debug = (keyboard_check_direct(vk_control) && keyboard_check_direct(vk_shift)  && keyboard_check_direct(ord("Z")));
if (keyboard_check_pressed(ord("R"))) game_restart();
if (keyboard_check_pressed(vk_escape)) game_end();