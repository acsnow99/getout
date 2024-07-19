
if (global.pickup_pressed) {
	obj_ctrl_pickups.reset_variables();
	instance_create_layer(x, y, "Instances", pickup_object);
	instance_destroy(self);
}

if (!instance_exists(obj_player)) exit;

x = obj_player.x;
y = obj_player.y;

if (obj_player.image_xscale == 1) {
	image_xscale = 1;
} else if (obj_player.image_xscale == -1) {
	image_xscale = -1;
}
