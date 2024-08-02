
event_inherited();

close_to_player = false;
interact_distance = 64;

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
	obj_ctrl_credits.start_credits();
}
