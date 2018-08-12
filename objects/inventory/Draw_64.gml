//Draw inv backing
if (!show_inventory) exit;

var c = c_black;

draw_set_alpha(0.7);

draw_rectangle_color(0, 0, gui_width * scale, gui_height * scale, c, c, c, c, false);

draw_set_alpha(1);

draw_sprite_part_ext(spr_inv_UI, 0,
	cell_size, 0, inv_UI_width,
	inv_UI_height, inv_UI_x,
	inv_UI_y, scale, scale, c_white, 1
);

//Player info
var info_grid = ds_player_info;

draw_set_font(fnt_text_24);

draw_text_color(info_x, info_y, info_grid[# 0, 3] + ": " + info_grid[# 1, 3], c, c, c, c, 1);

draw_set_font(fnt_small_digits);
var yy = 0; repeat(3) {
	draw_text_color(info_x + (192 * scale) + ((15+18)*scale*yy), info_y, string(info_grid[# 1, yy]), c, c, c, c, 1);
	yy += 1;
}

draw_set_font(fnt_text_12);

//Inventory
var ii, ix, iy, xx, yy, sx, sy, iitem, inv_grid;
ii = 0; ix = 0; iy = 0; inv_grid = ds_inventory;

repeat(inv_slots) {
//Draw Slot and Item
	xx = slots_x + ((cell_size + x_buffer) * ix * scale);
	yy = slots_y + ((cell_size + y_buffer) * iy * scale);
	
	iitem = inv_grid[# 0, ii];
	sx = (iitem mod spr_inv_items_columns) * cell_size;
	sy = (iitem div spr_inv_items_columns) * cell_size;
	
	draw_sprite_part_ext(spr_inv_UI, 0, 0, 0, cell_size, cell_size, xx, yy, scale, scale, c_white, 1);
	
	switch(ii) {
		case selected_slot:
			if (iitem > 0) {
				draw_sprite_part_ext(
					spr_inv_items, 0, sx, sy, cell_size, cell_size, xx, yy, scale, scale, c_white, 1
				);
				
				gpu_set_blendmode(bm_add);
				draw_sprite_part_ext(spr_inv_UI, 0, 0, 0, cell_size, cell_size, xx, yy, scale, scale, c_white, 0.3);
				gpu_set_blendmode(bm_normal);
			}
			
		break;
		
		case pickup_slot:
			if (iitem > 0) {
				draw_sprite_part_ext(
					spr_inv_items, 0, sx, sy, cell_size, cell_size, xx, yy, scale, scale, c_white, 0.2
				);
			}	
		
		default:
			if (iitem > 0) {
				draw_sprite_part_ext(
					spr_inv_items, 0, sx, sy, cell_size, cell_size, xx, yy, scale, scale, c_white, 1
				);
			}
		break;
	}
	
	
	if (iitem > 0) {
//Draw Item number
		var number = inv_grid[# 1, ii];
		draw_text_color(xx, yy, string(number), c, c, c, c, 1);
	}

//Increment
	ii += 1;
	ix = ii mod inv_slots_width;
	iy = ii div inv_slots_width;

}

if (pickup_slot != -1) {
	iitem = inv_grid[# 0, pickup_slot];
	sx = (iitem mod spr_inv_items_columns) * cell_size;
	sy = (iitem div spr_inv_items_columns) * cell_size;
	
	draw_sprite_part_ext(
					spr_inv_items, 0, sx, sy, cell_size, cell_size, mousex, mousey, scale, scale, c_white, 1
				);
				
	var inum = inv_grid[# 1, pickup_slot];
	draw_text_color(mousex + (cell_size * scale * 0.5), mousey, string(inum), c, c, c, c, 1);
}
