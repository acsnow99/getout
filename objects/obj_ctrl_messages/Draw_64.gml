
if (!active) exit;

if (global.message_continue_pressed) {
	if (current_page == end_page - 1) {
		end_message();
	} else {
		current_page++;
		current_text = wrap_text(text_pages[current_page], text_width);
	}
}

draw_set_color(c_black);
draw_set_alpha(0.6);
draw_rectangle(0, 0, global.view_width*global.window_scale, global.view_height*global.window_scale, false);
draw_set_alpha(1);

draw_sprite_ext(spr_dialogue_box, 0, 0, 0, global.window_scale, global.window_scale, 0 , c_white, 1);

draw_set_font(font_note_alt);
draw_text(text_x_buffer, text_y_buffer, current_text);

draw_set_color(c_white);

