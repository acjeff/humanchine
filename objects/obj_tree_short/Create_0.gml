collidable = true;
var tree_to_render;

if (tree_sprite == pink_block) {
	var tree_index = irandom(4);
	show_debug_message(string(tree_index) + " = tree_index")
	switch(tree_index) {
		case 0: 
		tree_to_render = spr_tree_short_pine_1;
		break;
		case 1: 
		tree_to_render = spr_tree_short_pine_2;
		break;
		case 2: 
		tree_to_render = spr_tree_short_pine_3;
		break;
		case 3: 
		tree_to_render = spr_tree_short_pine_4;
		break;
		case 4: 
		tree_to_render = spr_tree_short_pine_5;
		break;
	}
	show_debug_message(string(tree_to_render) + " = tree_to_render");
	tree_sprite = tree_to_render;
	mask_index = tree_to_render;
}