
event_inherited();

held_object = obj_item_held_amulet_blue;

function pickup() {
	global.held_item = instance_create_layer(x, y, "held_items", held_object);
	audio_play_sound(snd_shiny, 1, false, 1.2);
	obj_player.set_mode_float();
	instance_destroy(self);
}
