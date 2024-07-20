
global.held_item = noone;
global.pickup_selected = noone;

function set_selected_pickup(pickup) {
	global.pickup_selected = pickup;
}

function reset_variables() {
	global.held_item = noone;
	global.pickup_selected = noone;
}
