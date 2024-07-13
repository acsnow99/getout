
if (keyboard_check_pressed(vk_escape)) {
	game_end();
}
if (keyboard_check_pressed(ord("R"))) {
	game_restart();
}

global.message_continue_pressed = keyboard_check_pressed(ord("E")) || mouse_check_button_pressed(mb_left);

global.pickup_pressed = keyboard_check_pressed(vk_space);
