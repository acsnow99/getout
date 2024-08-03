
event_inherited();

held_object = obj_item_held_invisible;

image_alpha = 0.6;

function pickup() {
	global.held_item = instance_create_layer(x, y, "held_items", held_object);
	audio_play_sound(snd_cloth, 1, false);
	instance_destroy(self);
}
