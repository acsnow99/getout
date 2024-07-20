
pickup_object = obj_item_pickup;

x_offset_default = 0;
x_offset = 0;
y_offset = 0;
drop_x_offset_default = 0;
drop_x_offset = drop_x_offset_default;
drop_y_offset = 0;

function drop() {
	obj_ctrl_pickups.reset_variables();
	instance_create_layer(x + drop_x_offset, y + drop_y_offset, "Instances", pickup_object);
	instance_destroy(self);
}
