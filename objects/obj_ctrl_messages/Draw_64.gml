
if (!active) exit;

if (global.message_continue_pressed) {
	if (current_page == end_page - 1) {
		end_message();
	} else {
		current_page++;
		current_text = text_pages[current_page];
	}
}

draw_set_color(c_black);
draw_set_alpha(0.3);
draw_rectangle(0, 0, global.view_height, global.view_width, false);
draw_set_alpha(1);
draw_set_color(c_white);
draw_sprite(spr_dialogue_background, 0, 0, 0);
draw_text(text_x_buffer, text_y_buffer, current_text);
