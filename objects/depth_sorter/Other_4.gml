layer_add_instance("Instances", id);
if (global.outdoors) {
	show_debug_message("Outdoors");
	layer_add_instance("Trees", id);
	layer_add_instance("Buildings", id);
	layer_add_instance("B_Details", id);
}
else {
	show_debug_message("Indoors");
	layer_add_instance("Objects", id);
}
