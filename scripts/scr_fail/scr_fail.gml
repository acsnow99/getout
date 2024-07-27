// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function fail(){
	if (!instance_exists(obj_player)) {
		return;
	}
	obj_player.teleport(global.checkpoint_instance.x, global.checkpoint_instance.y);
}