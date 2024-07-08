
offset = 32;

target_instance = -1;
target_direction = global.directions[0];

transitioning = false;

function check_move_player() {
	if (!instance_exists(obj_player)) exit;
	
	if (place_meeting(x, y, obj_player)) {
		obj_player_actor_transition.start_acting(target_direction);
		obj_player.disable();
		transitioning = true;
	}
}

function check_transition_done() {
	if (!obj_player_actor_transition.active) {
		var horiz_offset = 0;
		var vert_offset = 0;
	
		if (target_direction == global.directions[0]) horiz_offset = offset;
		else if (target_direction == global.directions[2]) horiz_offset = offset * -1;
		else if (target_direction == global.directions[1]) vert_offset = offset * -1;
		else if (target_direction == global.directions[3]) vert_offset = offset;
		
		obj_player.teleport(target_instance.x + horiz_offset, target_instance.y + vert_offset);
		
		obj_player.enable();

		transitioning = false;
	}
}
