
if (y > obj_player.y) {
	layer_add_instance("Instances_foreground", self);
} else {
	layer_add_instance("Instances_background", self);
}
