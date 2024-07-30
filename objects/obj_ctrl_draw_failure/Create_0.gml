
fade_to_black_length = 1.5;
alarmvar_fade = fade_to_black_length;
global.fading = false;

function end_fade() {
	alarmvar_fade = fade_to_black_length;
	global.fading = false;
	finish_failure();
}
