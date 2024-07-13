
function set_player_inside_wall(is_player_enter_wall) {
	obj_player.teleport(player_teleport_x, player_teleport_y);
	if (is_player_enter_wall) {
		obj_player.enter_wall();
	} else {
		obj_player.exit_wall();
	}
}
