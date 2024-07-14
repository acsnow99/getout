
global.player_has_pickup = false;
global.pickup_selected = noone;

function set_selected_pickup(pickup) {
	global.pickup_selected = pickup;
}

function reset_variables() {
	global.player_has_pickup = false;
	global.pickup_selected = noone;
}
