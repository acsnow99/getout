
current_text = "DEFAULT TEXT";

text_x_buffer = 0;
text_y_buffer = 0;

current_page = 0;
end_page = 1;

text_pages = ["DEFAULT TEXT"];

active = true;

function start_message(text_array, end_page_index) {
	text_pages = text_array;
	end_page = end_page_index;
	
	active = true;
}

function end_message() {
	active = false;
}





