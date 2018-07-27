/// @description 
moveCam = keyboard_check(ord("C"));

if (moveCam) {
	x += (keyboard_check(vk_right) - keyboard_check(vk_left)) * 6;
	y += (keyboard_check(vk_down) - keyboard_check(vk_up)) * 6;
} else {
	x = clamp(following.x, x - h_border, x + h_border);
	y = clamp(following.y, y - v_border, y + v_border);
}