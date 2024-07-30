
if (global.fading) {
	alarmvar_fade -= delta_time / 1000000;
	if (alarmvar_fade <= 0) {
		end_fade();
	}
}
