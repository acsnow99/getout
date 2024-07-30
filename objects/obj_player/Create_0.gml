
move_speed = 0.0003;

active = true;

inside_wall = false;

moving = false;

held_item_speed_multiplier = 0.75;
held_item_image_speed = 0.6;

image_index = 0;
image_speed = 0;


function movement_input() {
	var xinput = 0;
	var yinput = 0;
	var key_pressed = false;
	var speed_multiplier = 1;
	if (global.held_item != noone) speed_multiplier = held_item_speed_multiplier;
	
	for (var i = 0; i < global.keyboard_input_count; i++;) {
	
		if (keyboard_check(global.mve_inputs_keyboard[i])) {
		
			var dir = global.directions[i % 4];
			xinput += lengthdir_x(1, dir);
			yinput += lengthdir_y(1, dir);
			
			key_pressed = true;
		
		}
	
	}
	
	if (key_pressed) {
		var speed_exact = move_speed * delta_time * speed_multiplier;
		var dir_exact = point_direction(0, 0, xinput, yinput);

		move_simple(speed_exact, dir_exact, inside_wall);
		
		set_is_moving(true);
		update_sprite_direction();
	} else {
		set_is_moving(false);
	}
}

function set_is_moving(is_moving) {
	if (!moving && is_moving) {
		image_index = 1;
		image_speed = 1;
	}
	if (moving && !is_moving) {
		image_index = 0;
		image_speed = 0;
	}
	moving = is_moving;
}

function update_sprite_direction() {
	if (x > xprevious) {
		image_xscale = 1;
	} else if (x < xprevious) {
		image_xscale = -1;
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
