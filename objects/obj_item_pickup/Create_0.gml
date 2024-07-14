
close_to_player = false;
interact_distance = 48;
held_object = obj_item_held;

function set_selected() {
	close_to_player = true;
	obj_ctrl_pickups.set_selected_pickup(self);
}

function set_not_selected() {
	close_to_player = false;
	if (self == global.pickup_selected) {
		obj_ctrl_pickups.set_selected_pickup(noone);
	}
}

function pickup() {
	global.player_has_pickup = true;
	instance_create_layer(x, y, "Instances", held_object);
	instance_destroy(self);
}
