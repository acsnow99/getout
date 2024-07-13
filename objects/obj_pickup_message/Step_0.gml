
if (!instance_exists(obj_player)) exit;

if (place_meeting(x, y, obj_player)) {
	if (!touching_player) {
		touching_player = true;
		obj_ctrl_messages.start_message(text_array, end_page_index);
	}
} else {
	touching_player = false;
}