// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function fail(){
	if (!global.pause) {
		audio_play_sound(snd_magic, 1, false);
	}
	global.fading = true;
	global.pause = true;
}