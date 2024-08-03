
event_inherited();

text_array = ["DEFAULT TEXT FROM ITEM PICKUP"]
end_page_index = 1;

function pickup() {
	//obj_ctrl_messages.start_message(text_array, end_page_index);
	var o = instance_create_layer(inst_door_select_office_0.x, inst_door_select_office_0.y, "Instances", obj_door);
	o.target_obj = inst_door_anchor_4;
	instance_destroy(inst_door_select_office_0);
	obj_desk.image_index = 1;
	teleport_boxes();
	instance_destroy(self);
}

function teleport_boxes() {
	for (var i = 0; i < instance_number(obj_item_pickup_cardboard_tp); i++;) {
		var o = instance_find(obj_item_pickup_cardboard_tp, i);
		o.teleport_self();
	}
}
