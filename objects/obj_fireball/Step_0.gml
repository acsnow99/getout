
var _spd = move_speed * delta_time;

x += _spd * image_xscale * -1;

var o = instance_nearest(x, y, obj_cobwebs);
if (place_meeting(x, y, o)) {
	instance_destroy(o);
}

var o = instance_nearest(x, y, obj_item_pickup_cardboard_parent);
if (place_meeting(x, y, o)) {
	instance_destroy(o);
}

if (place_meeting(x, y, obj_collision_parent)) {
	instance_destroy(self);
}
