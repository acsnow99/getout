
if (global.fading) {
	draw_set_color(c_black);
	draw_set_alpha(1 - alarmvar_fade/fade_to_black_length);
	draw_rectangle(0, 0, global.view_width*global.window_scale, global.view_height*global.window_scale, false);
	draw_set_alpha(1);
	draw_set_color(c_white);
}
