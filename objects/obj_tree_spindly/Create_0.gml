collidable = true;
var tree_to_render;


if (tree_sprite == pink_block) {
	var tree_index = irandom(5);
	show_debug_message(string(tree_index) + " = tree_index")
	switch(tree_index) {
		case 0: 
		tree_to_render = spr_tree_spindly_1;
		break;
		case 1: 
		tree_to_render = spr_tree_spindly_2;
		break;
		case 2: 
		tree_to_render = spr_tree_spindly_3;
		break;
		case 3: 
		tree_to_render = spr_tree_spindly_4;
		break;
		case 4: 
		tree_to_render = spr_tree_spindly_5;
		break;
		case 5: 
		tree_to_render = spr_tree_spindly_6;
		break;
	}
	show_debug_message(string(tree_to_render) + " = tree_to_render");
	tree_sprite = tree_to_render;
	mask_index = tree_to_render;
}