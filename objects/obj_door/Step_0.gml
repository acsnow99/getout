
if (!instance_exists(obj_player)) exit;

if (distance_to_object(obj_player) < interact_distance) {
	set_selected();
} else {
	set_not_selected();
}
