
move_speed = 0.0003;

active = true;

inside_wall = false;

moving = false;

held_item_speed_multiplier_default = 0.75;
held_item_speed_multiplier = held_item_speed_multiplier_default;
held_item_image_speed = 0.6;

floating = false;

draw_color = c_white;

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
		if (!floating) {
			move_simple(speed_exact, dir_exact, inside_wall);
		} else {
			move_float(speed_exact, dir_exact);
		}
		
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

function set_speed_multiplier(mult) {
	held_item_speed_multiplier = mult;
}

function reset_speed_multiplier() {
	held_item_speed_multiplier = held_item_speed_multiplier_default;
}

function set_draw_color(color) {
	draw_color = color;
}

function reset_draw_color() {
	draw_color = c_white;
}

function set_mode_hyper() {
	set_speed_multiplier(3);
	set_draw_color(c_aqua);
}

function set_mode_float() {
	floating = true;
}

function set_mode_default() {
	reset_speed_multiplier();
	reset_draw_color();
	floating = false;
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
