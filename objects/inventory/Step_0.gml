if (keyboard_check_pressed(ord("I"))) { show_inventory = !show_inventory};
global.show_inventory = show_inventory;

if (!show_inventory) exit;

mousex = device_mouse_x_to_gui(0);
mousey = device_mouse_y_to_gui(0);

var cell_xbuff = (cell_size + x_buffer)*scale;
var cell_ybuff = (cell_size + y_buffer)*scale;

var i_mouse_x = mousex - slots_x;
var i_mouse_y = mousey - slots_y;

var nx = i_mouse_x div cell_xbuff;
var ny = i_mouse_y div cell_ybuff;

if (nx >= 0 and nx < inv_slots_width and ny >= 0 and ny < inv_slots_height) {
	var sx = i_mouse_x - (nx * cell_xbuff);
	var sy = i_mouse_y - (ny * cell_ybuff);
	if ((sx < cell_size * scale) and (sy < cell_size * scale)) {
		m_slotx = nx;
		m_sloty = ny;
	}
}

//Set selected slot to mouse position

selected_slot = min(inv_slots - 1, m_slotx + (m_sloty * inv_slots_width));
