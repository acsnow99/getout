
if (global.held_item != noone) {
	if (global.held_item.object_index == obj_item_held_invisible) {
		image_index = 5;
		exit;
	} 
}
if (!global.lights_on) {
	image_index = 5;
	exit;
}

check_failure();

update_sprite();
