
event_inherited();

held_object = obj_item_held_box_tp;

function teleport_self() {
	var dist_x = x - inst_door_anchor_3.x;
	var dist_y = y - inst_door_anchor_3.y;
	x = inst_door_anchor_4.x + dist_x;
	y = inst_door_anchor_4.y + dist_y;
	alarm_set(0, 2);
}

function pickup() {
	global.held_item = instance_create_layer(x, y, "held_items", held_object);
	audio_play_sound(snd_box, 1, false);
	instance_destroy(self);
}
