
credits_index = 0;
credits_page_count = 3;
credits_text = ["You made it out alive,\nwith a tale to tell...", "A game made by Alex Snow\nin the 2024 FGDAGJJ.", "Thanks for playing"];

function advance_credits() {
	if (credits_index == credits_page_count - 1) {
		obj_ctrl_credits.end_the_game();
	} else {
		credits_index++;
	}
}
