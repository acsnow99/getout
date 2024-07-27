
close_to_player = false;
interact_distance = 24;
held_object = obj_item_held;

draw_select_offset_x = 0;
draw_select_offset_y = 0;

depth = -y;

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
	global.held_item = instance_create_layer(x, y, "held_items", held_object);
	instance_destroy(self);
}
