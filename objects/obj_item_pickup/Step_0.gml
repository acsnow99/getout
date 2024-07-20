
if (!instance_exists(obj_player)) exit;

if (distance_to_object(obj_player) < interact_distance) {
	if (global.held_item == noone && global.pickup_selected == noone) {
		set_selected();
	}
} else {
	set_not_selected();
}


if (y > obj_player.y) {
	layer_add_instance("Instances_foreground", self);
} else {
	layer_add_instance("Instances_background", self);
}

