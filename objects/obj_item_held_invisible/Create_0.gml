
event_inherited();

pickup_object = obj_item_pickup_invisible;

x_offset_default = 0;
x_offset = x_offset_default;
y_offset = 0;

image_alpha = 0.6;

function drop() {
	obj_ctrl_pickups.reset_variables();
	var o = instance_create_layer(x + drop_x_offset, y + drop_y_offset, "Instances", pickup_object);
	o.image_xscale = image_xscale;
	audio_play_sound(snd_cloth, 1, false);
	instance_destroy(self);
}

