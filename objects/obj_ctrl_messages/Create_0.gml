
current_text = "DEFAULT TEXT";

text_x_buffer = global.view_width*global.window_scale/18;
text_y_buffer = global.view_height-180;
text_width = global.view_width*global.window_scale - 200;

current_page = 0;
end_page = 1;

text_pages = ["DEFAULT TEXT"];

active = false;

global.message_open = false;


function start_message(text_array, end_page_index) {
	text_pages = text_array;
	current_text = wrap_text(text_pages[0], text_width);
	end_page = end_page_index;
	
	active = true;
	global.message_open = true;
}

function end_message() {
	current_page = 0;
	active = false;
	global.message_open = false;
}

function wrap_text(str, maxwidth){
	var str_length = string_length(str);
	var last_space = 1;
	var count = 1;
	var substr;
	draw_set_font(font_note_1);
	repeat(str_length) {
		substr = string_copy(str, 1, count);
		if (string_char_at(str, count) == " ") last_space = count;
		if (string_width(substr) > maxwidth){
			str = string_delete(str, last_space, 1);
			str = string_insert("\n", str, last_space);
		}
		count++;
	}
	return str;
}





