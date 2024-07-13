
close_to_player = false;
interact_distance = 48;

function set_selected() {
	close_to_player = true;
	obj_ctrl_pickups.set_selected_pickup(self);
}

function set_not_selected() {
	close_to_player = false;
	obj_ctrl_pickups.set_selected_pickup(noone);
}

function pickup() {
	global.player_has_pickup = true;
}
