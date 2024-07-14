
move_speed = 0.0006;

active = true;

inside_wall = false;

function movement_input() {
	var xinput = 0;
	var yinput = 0;
	var key_pressed = false;
	
	for (var i = 0; i < global.keyboard_input_count; i++;) {
	
		if (keyboard_check(global.mve_inputs_keyboard[i])) {
		
			var dir = global.directions[i % 4];
			xinput += lengthdir_x(1, dir);
			yinput += lengthdir_y(1, dir);
			
			key_pressed = true;
		
		}
	
	}
	
	if (key_pressed) {
		var speed_exact = move_speed * delta_time;
		var dir_exact = point_direction(0, 0, xinput, yinput);

		move_simple(speed_exact, dir_exact, inside_wall);
	}
}

function disable() {
	active = false;
}

function enable() {
	active = true;
}

function teleport(_x, _y) {
	x = _x;
	y = _y;
}

function enter_wall() {
	inside_wall = true;
	sprite_index = spr_player_inside_wall;
}

function exit_wall() {
	inside_wall = false;
	sprite_index = spr_player;
}
