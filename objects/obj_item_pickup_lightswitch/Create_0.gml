
event_inherited();

image_speed = 0;

interact_distance = 30;

function pickup() {
	obj_ctrl_lights.switch_lights();
	audio_play_sound(snd_light, 1, false);
}
