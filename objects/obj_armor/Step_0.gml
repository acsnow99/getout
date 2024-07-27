
if (global.held_item != noone) {
	if (global.held_item.object_index == obj_item_held_helmet) {
		image_index = 2;
		exit;
	} 
}

check_failure();

update_sprite();
