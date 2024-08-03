
if (disabled_condition()) exit;

if (distance_to_object(obj_player) < interact_distance) {
	if (global.held_item == noone && global.pickup_selected == noone) {
		set_selected();
	}
} else {
	set_not_selected();
}
