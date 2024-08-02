
if (global.credits_active) {
	image_alpha = 1 - global.alarmvar_credits / global.alarmvar_credits_default;
	
	draw_set_color(c_black);
	draw_set_alpha(image_alpha);
	draw_set_font(font_credits);
	draw_set_halign(fa_center);
	draw_rectangle(0, 0, global.view_width*global.window_scale, global.view_height*global.window_scale, false);
	draw_set_color(c_white);
	draw_text(global.view_width/2*global.window_scale, global.view_height/4*global.window_scale, credits_text[credits_index]);
	draw_set_halign(fa_left);
	draw_set_alpha(1);
}
