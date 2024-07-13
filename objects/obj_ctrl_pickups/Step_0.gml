
if (global.pickup_pressed) {
	if (global.pickup_selected != noone) {
		global.pickup_selected.pickup();
		global.pickup_selected = noone;
	}
}
