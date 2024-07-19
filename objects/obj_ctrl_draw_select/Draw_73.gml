
if (!instance_exists(obj_ctrl_pickups)) exit;

var o = global.pickup_selected;

if (o != noone) {
	var draw_x = o.x + o.draw_select_offset_x;
	var draw_y = o.y + o.draw_select_offset_y;
	draw_sprite_ext(spr_select, image_index, draw_x, draw_y, 1, 1, 0, c_white, image_alpha);
}
