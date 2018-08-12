if (drop_move) {
	x = lerp(x, goal_x, 0.3);
	y = lerp(y, goal_y, 0.3);
	if (abs(x - goal_x) < 1 and abs(y - goal_y) < 1) drop_move = false;
} else {
	var px = obj_player.x;
	var py = obj_player.y;
	var r = 32;
	if(point_in_rectangle(px, py, x-r, y-r, x+r, y+r)) {
		
		
		//Are we on top of the player
		r = 2;
		if(!point_in_rectangle(px, py, x-r, y-r, x+r, y+r)) {
			//move towards player
			x = lerp(x, px, 0.3);
			y = lerp(y, py, 0.3);
		}
		else {
		//pickup item
			var in = item_num;
			
			with(inventory) {
				var ds_inv = ds_inventory;
				var picked_up = false;
				
				//check if item exists in inventory already
				var yy = 0; repeat(inv_slots){
					if (ds_inv[# 0, yy] == in) {
						ds_inv[# 1, yy] += 1;
						picked_up = true;
						break;
					}
					else {
						yy += 1;
					}
				}
				
				
				//Otherwise add to an empty slot
				
				if (!picked_up) {
					var yy = 0; repeat(inv_slots){
						if (ds_inv[# 0, yy] == item.none) {
							ds_inv[# 0, yy] = in;
							ds_inv[# 1, yy] += 1;
							picked_up = true;
							break;
						}
						else {
							yy += 1;
						}
					}
				}
			
				
			}
			
			//Destory item if picked up
			if (picked_up) {
				instance_destroy();
			}
			
		}
	}
}