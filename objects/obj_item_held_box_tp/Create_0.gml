
event_inherited();

pickup_object = obj_item_pickup_box_tp;

x_offset_default = sprite_get_width(spr_crate_pickup)/2;
x_offset = x_offset_default;
y_offset = 0;

function drop() {
	obj_ctrl_pickups.reset_variables();
	var o = instance_create_layer(x + drop_x_offset, y + drop_y_offset, "Instances", pickup_object);
	o.image_xscale = image_xscale;
	audio_play_sound(snd_box, 1, false);
	instance_destroy(self);
}
