
movement_speed = 0.0004;
movement_direction_exact = global.directions[0];

alarm_acting_default = 500000;
alarm_acting = alarm_acting_default;

active = false;

function start_acting(dir) {
	active = true;
	movement_direction_exact = dir;
	teleport(obj_player.x, obj_player.y);
}

function act() {
	var speed_exact = movement_speed * delta_time;
	move_simple(speed_exact, movement_direction_exact);
	alarm_acting -= delta_time;
}

function check_done_acting() {
	if (alarm_acting <= 0) {
		reset_variables();
	}
}

function reset_variables() {
	active = false;
	alarm_acting = alarm_acting_default;
	movement_speed = 0.0004;
}

function teleport(_x, _y) {
	x = _x;
	y = _y;
}
