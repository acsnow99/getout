
#macro VIEW view_camera[0]


global.default_view_width = 480;
global.view_width = global.default_view_width;
global.default_view_height = 270;
global.view_height = global.default_view_height;
global.window_scale = 4;

window_set_size(global.view_width*global.window_scale, global.view_height*global.window_scale);
surface_resize(application_surface, global.view_width*global.window_scale, global.view_height*global.window_scale);
display_set_gui_size(global.view_width*global.window_scale, global.view_height*global.window_scale);
window_set_fullscreen(true);
camera_set_view_size(view_camera[0], global.view_width, global.view_height);

focus_obj = obj_player;

tracking_speed = 1;

layer_set_visible("collision", false);
layer_set_visible("darkness", true);

function camera_set_position() {
	if (!instance_exists(focus_obj) || !global.level_bounds_initialized) {
		exit;
	}

	var _focusx = focus_obj.x;
	var _focusy = focus_obj.y;

	var _min_x = global.level_bounds[global.level, LEVEL_BOUND_PROPS.X_LEFT];
	var _max_x = global.level_bounds[global.level, LEVEL_BOUND_PROPS.X_RIGHT];
	var _min_y = global.level_bounds[global.level, LEVEL_BOUND_PROPS.Y_TOP];
	var _max_y = global.level_bounds[global.level, LEVEL_BOUND_PROPS.Y_BOTTOM];
	
	var _camera_focusx = _focusx - global.view_width / 2;
	var _camera_focusy = _focusy - global.view_height / 2;

	var _x = clamp(_camera_focusx, _min_x, _max_x - global.view_width);
	var _y = clamp(_camera_focusy, _min_y, _max_y - global.view_height);
	
	var _cur_x = camera_get_view_x(VIEW);
	var _cur_y = camera_get_view_y(VIEW);

	//set the camera's position
	camera_set_view_pos(VIEW, round(lerp(_cur_x, _x, tracking_speed)), round(lerp(_cur_y, _y, tracking_speed)));
}
