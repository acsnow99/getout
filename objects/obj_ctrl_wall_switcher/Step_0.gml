
var touching_player = false;
for (var i = 0; i < instance_number(obj_wall_switcher); i++) {
	var o = instance_find(obj_wall_switcher, i);
	with (o) {
		if (place_meeting(x, y, obj_player)) {
			if (!other.player_was_switched) {
				set_player_inside_wall(is_player_enter_wall);
			}
			touching_player = true;
		}
	}
}
player_was_switched = touching_player;


