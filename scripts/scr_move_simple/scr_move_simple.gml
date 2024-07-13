function move_simple(_spd, _dir, _inside_wall=false) {

	var xtarg = round(x + lengthdir_x(_spd, _dir));
	var ytarg = round(y + lengthdir_y(_spd, _dir));
	var setx = false;
	var sety = false;
	
	var l = layer_get_id("collision");
	var map = layer_tilemap_get_id(l);
	
	#region check which side of the bounding box to use for collisions
	//bbox_x and bbox_y are the distance from the origin to the specified edge of the bbox
	var bbox_x = (bbox_right - bbox_left)/2;
	var bbox_y = (bbox_bottom - bbox_top)/2;

	//moving right
	if (xtarg > x) {
		bbox_x = bbox_right - x;
	}
	//moving left
	else if (xtarg < x) {
		bbox_x = bbox_left - x;
	}

	//moving up
	if (ytarg < y) {
		bbox_y = bbox_top - y;
	}
	//moving down
	else if (ytarg > y) {
		bbox_y = bbox_bottom - y;
	}

	#endregion
	
	if (!_inside_wall) {
		if (!(tilemap_get_at_pixel(map, xtarg + bbox_x, bbox_top) > 0) && !(tilemap_get_at_pixel(map, xtarg + bbox_x, bbox_bottom) > 0)) {
			x = xtarg;
			setx = true;
		}
		else {
			var inc = sign(xtarg - x);
			while (!(tilemap_get_at_pixel(map, x + inc + bbox_x, bbox_top) > 0) && !(tilemap_get_at_pixel(map, x + inc + bbox_x, bbox_bottom) > 0)) {
				x += inc;
			}
		}
		if (!(tilemap_get_at_pixel(map, bbox_right, ytarg + bbox_y) > 0) && !(tilemap_get_at_pixel(map, bbox_left, ytarg + bbox_y) > 0)) {
			y = ytarg;
			sety = true;
		}
		else {
			var inc = sign(ytarg - y);
			while (!(tilemap_get_at_pixel(map, bbox_right, y + inc + bbox_y) > 0) && !(tilemap_get_at_pixel(map, bbox_left, y + inc + bbox_y) > 0)) {
				y += inc;
			}
		}
	} else {
		if ((tilemap_get_at_pixel(map, xtarg + bbox_x, bbox_top) != 0) && (tilemap_get_at_pixel(map, xtarg + bbox_x, bbox_bottom) != 0)) {
			x = xtarg;
			setx = true;
		}
		else {
			var inc = sign(xtarg - x);
			while ((tilemap_get_at_pixel(map, x + inc + bbox_x, bbox_top) != 0) && (tilemap_get_at_pixel(map, x + inc + bbox_x, bbox_bottom) != 0)) {
				x += inc;
			}
		}
		if ((tilemap_get_at_pixel(map, bbox_right, ytarg + bbox_y) != 0) && (tilemap_get_at_pixel(map, bbox_left, ytarg + bbox_y) != 0)) {
			y = ytarg;
			sety = true;
		}
		else {
			var inc = sign(ytarg - y);
			while ((tilemap_get_at_pixel(map, bbox_right, y + inc + bbox_y) != 0) && (tilemap_get_at_pixel(map, bbox_left, y + inc + bbox_y) != 0)) {
				y += inc;
			}
		}
	}
}