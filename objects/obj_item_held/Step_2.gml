
if (!instance_exists(obj_player)) exit;

x = obj_player.x + x_offset;
y = obj_player.y + y_offset;

if (obj_player.image_xscale == 1) {
	image_xscale = 1;
	x_offset = x_offset_default;
	drop_x_offset = drop_x_offset_default;
} else if (obj_player.image_xscale == -1) {
	image_xscale = -1;
	x_offset = x_offset_default * -1;
	drop_x_offset = drop_x_offset_default * -1;
}
