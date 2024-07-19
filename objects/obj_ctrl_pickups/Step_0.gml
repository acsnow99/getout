
if (global.pickup_pressed) {
	if (!global.player_has_pickup && global.pickup_selected != noone) {
		global.pickup_selected.pickup();
		global.pickup_selected = noone;
	}
}
