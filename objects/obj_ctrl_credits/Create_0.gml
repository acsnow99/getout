
global.credits_active = false;

global.alarmvar_credits_default = 3;
global.alarmvar_credits = global.alarmvar_credits_default;

global.credits_ready_to_end = false;

function start_credits() {
	global.credits_active = true;
	global.message_open = true;
	if (global.skull_helped) {
		obj_ctrl_draw_credits.alt_ending();
	}
}

function update_credits() {
	if (global.credits_active) {
		if (global.alarmvar_credits > 0) { 
			global.alarmvar_credits -= delta_time / 1000000;
		} else {
			if (global.pickup_pressed) {
				obj_ctrl_draw_credits.advance_credits();
			}
		}
	}
}
