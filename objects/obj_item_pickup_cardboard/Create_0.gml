
event_inherited();

draw_select_offset_y = -16;

held_object = obj_item_held_cardboard;

image_index = 1;
image_speed = 0;

function pickup() {
	global.held_item = instance_create_layer(x, y, "held_items", held_object);
	audio_play_sound(snd_cardboard, 1, false);
	instance_destroy(self);
}

