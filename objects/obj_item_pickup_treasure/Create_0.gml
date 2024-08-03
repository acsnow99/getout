
event_inherited();

held_object = obj_item_held_treasure;
draw_select_offset_y = -8;

depth = obj_darkness.depth - 5;

function disabled_condition() {
	return !instance_exists(obj_player) || global.message_open || global.lights_on;
}

function pickup() {
	global.held_item = instance_create_layer(x, y, "held_items", held_object);
	obj_player.set_mode_hyper();
	instance_destroy(self);
}
