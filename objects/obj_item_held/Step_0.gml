
if (global.pickup_pressed) {
	obj_ctrl_pickups.reset_variables();
	instance_create_layer(x, y, "Instances", pickup_object);
	instance_destroy(self);
}

x = obj_player.x;
y = obj_player.y;
