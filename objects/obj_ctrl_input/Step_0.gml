
if (keyboard_check_pressed(vk_escape)) {
	game_end();
}

global.message_continue_pressed = keyboard_check_pressed(vk_space) || mouse_check_button_pressed(0);
