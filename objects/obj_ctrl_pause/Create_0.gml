
global.pause = false;

quit_button_instance = noone;
quit_button_offset_x = global.view_width/2 + 100;
quit_button_offset_y = global.view_height - 170;

resume_button_instance = noone;
resume_button_offset_x = global.view_width/2 - 100;
resume_button_offset_y = global.view_height - 170;

depth = obj_darkness.depth - 5;

function pause() {
	if (!global.pause) {
		global.pause = true;
		quit_button_instance = instance_create_layer(0, 0, "Instances_foreground", obj_button_quit);
		quit_button_instance.x = camera_get_view_x(view_camera[0]) + quit_button_offset_x;
		quit_button_instance.y = camera_get_view_y(view_camera[0]) + quit_button_offset_y;
		quit_button_instance.depth = depth;
	
		resume_button_instance = instance_create_layer(0, 0, "Instances_foreground", obj_button_resume);
		resume_button_instance.x = camera_get_view_x(view_camera[0]) + resume_button_offset_x;
		resume_button_instance.y = camera_get_view_y(view_camera[0]) + resume_button_offset_y;
		resume_button_instance.depth = depth;
	
		audio_play_sound(snd_select, 1, false);
	}
}

function unpause() {
	global.pause = false;
	instance_destroy(quit_button_instance);
	instance_destroy(resume_button_instance);
}
