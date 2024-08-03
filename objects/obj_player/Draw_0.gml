
if (global.fading || global.message_open) { image_index = 0; image_speed = 0; }

depth = -y;

if (global.held_item != noone && global.held_item.object_index == obj_item_held_invisible) exit;

if (active) {
	if (moving && image_index == 0) {
		image_index++;
	}
	var local_offset_x = 0;
	var local_offset_y = 0;
	if (floating) {
		local_offset_y = -64;
	}
	draw_sprite_ext(spr_drop_shadow, 0, x, y, 1, 1, 0, c_white, 0.6);
	draw_sprite_ext(sprite_index, image_index, x + local_offset_x, y + local_offset_y, image_xscale, image_yscale, 0, draw_color, 1);
}
