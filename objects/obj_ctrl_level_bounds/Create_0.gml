
enum LEVEL_BOUND_PROPS {
	X_LEFT,
	Y_TOP,
	X_RIGHT,
	Y_BOTTOM,
	LENGTH
}

global.level_bounds_initialized = false;
global.level = 0;
level_previous = 0;

function initialize_level_bounds() {
	if (!instance_exists(obj_level_bound)) {
		exit;
	}
	for (var i = 0; i < instance_number(obj_level_bound); i++;) {
		var o = instance_find(obj_level_bound, i);
		global.level_bounds[i, LEVEL_BOUND_PROPS.X_LEFT] = o.x;
		global.level_bounds[i, LEVEL_BOUND_PROPS.Y_TOP] = o.y;
		global.level_bounds[i, LEVEL_BOUND_PROPS.X_RIGHT] = o.x + sprite_get_width(spr_level_bound) * o.image_xscale;
		global.level_bounds[i, LEVEL_BOUND_PROPS.Y_BOTTOM] = o.y + sprite_get_height(spr_level_bound) * o.image_yscale;
	}
	global.level_bounds_initialized = true;
}

level_seek = function(_focusx, _focusy) {
	if (!global.level_bounds_initialized) exit;
	for (var i = 0; i < instance_number(obj_level_bound); i++) {
		var _min_x = global.level_bounds[i, LEVEL_BOUND_PROPS.X_LEFT];
		var _min_y = global.level_bounds[i, LEVEL_BOUND_PROPS.Y_TOP];
		var _max_x = global.level_bounds[i, LEVEL_BOUND_PROPS.X_RIGHT];
		var _max_y = global.level_bounds[i, LEVEL_BOUND_PROPS.Y_BOTTOM];
		if (_focusx >= _min_x && _focusx <= _max_x && _focusy >= _min_y && _focusy <= _max_y) {
			return i;
		}
	}
	return 0;
}

function update_player_level_bound() {
	if (!instance_exists(obj_player)) exit;
	global.level = level_seek(obj_player.x, obj_player.y);
	if (global.level != level_previous) {
		level_previous = global.level;
	}
}
