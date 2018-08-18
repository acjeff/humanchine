collidable = true;
var tree_to_render;

show_debug_message(string(tree_sprite) + " = tree_sprite")

if (tree_sprite == pink_block) {
	var tree_index = irandom(6);

	switch(tree_index) {
		case 0: 
		tree_to_render = spr_tree_tall_pine_1;
		break;
		case 1: 
		tree_to_render = spr_tree_tall_pine_2;
		break;
		case 2: 
		tree_to_render = spr_tree_tall_pine_3;
		break;
		case 3: 
		tree_to_render = spr_tree_tall_pine_4;
		break;
		case 4: 
		tree_to_render = spr_tree_tall_pine_5;
		break;
		case 5: 
		tree_to_render = spr_tree_tall_pine_6;
		break;
		case 6: 
		tree_to_render = spr_tree_tall_pine_7;
	}
	tree_sprite = tree_to_render;
	mask_index = tree_to_render;
}