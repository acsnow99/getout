
event_inherited();

pickup_object = obj_item_pickup_amulet_blue;

x_offset_default = sprite_get_width(spr_amulet_orange)/2;
x_offset = x_offset_default;
y_offset = -64;
drop_y_offset = 64;

function drop() {
	obj_ctrl_pickups.reset_variables();
	var o = instance_create_layer(x + drop_x_offset, y + drop_y_offset, "Instances", pickup_object);
	o.image_xscale = image_xscale;
	obj_player.set_mode_default();
	instance_destroy(self);
}
