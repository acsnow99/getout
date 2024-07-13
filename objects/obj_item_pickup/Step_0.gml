
if (!instance_exists(obj_player)) exit;

if (distance_to_object(obj_player) < interact_distance) {
	if (!global.player_has_pickup && global.pickup_selected == noone) {
		set_selected();
	}
} else {
	set_not_selected();
}
