
watch_distance = 128;
fail_distance_x = -72;

image_speed = 0;
image_index = 2;

depth = -y;

function check_failure() {
	if (distance_to_object(obj_player) < watch_distance && point_direction(x, y, obj_player.x, obj_player.y) > 180) {
		var diff = obj_player.x - x;
		if (diff < fail_distance_x) {
			fail();
		}
	}
}

function update_sprite() {
	var direction_to_player = point_direction(x, y, obj_player.x, obj_player.y);
	if (direction_to_player < 180) {
		image_index = 2;
	} else if (direction_to_player > 315) {
		image_index = 4;
	} else if (direction_to_player > 290) {
		image_index = 3;
	} else if (direction_to_player > 260) {
		image_index = 2;
	} else if (direction_to_player > 240) {
		image_index = 1;
	} else {
		image_index = 0;
	}
}
