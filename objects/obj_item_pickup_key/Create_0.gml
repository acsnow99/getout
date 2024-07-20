
event_inherited();

text_array = ["DEFAULT TEXT FROM ITEM PICKUP"]
end_page_index = 1;

function pickup() {
	//obj_ctrl_messages.start_message(text_array, end_page_index);
	obj_player.teleport(inst_anchor_0.x, inst_anchor_0.y);
	instance_destroy(self);
}
