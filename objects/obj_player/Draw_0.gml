
if (active) {
	if (moving && image_index == 0) image_index++;
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, c_white, 1);
}
