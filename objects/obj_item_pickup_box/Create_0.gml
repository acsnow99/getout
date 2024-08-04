
event_inherited();

held_object = obj_item_held_box;

function pickup() {
	global.held_item = instance_create_layer(x, y, "held_items", held_object);
	audio_play_sound(snd_box, 1, false);
	instance_destroy(self);
}
