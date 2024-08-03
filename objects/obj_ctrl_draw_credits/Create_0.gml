
credits_index = 0;
credits_page_count = 5;
credits_text = ["You made it out alive,\nwith a tale to tell...", "The work of the\nParanormal Disposal Agency\ncontinues as normal\nto this day.", "No interns were harmed\nin the process.", "A game made by Alex Snow\nin the 2024 FGDAGJJ.", "Thanks for playing."];

function advance_credits() {
	if (credits_index == credits_page_count - 1) {
		obj_ctrl_credits.end_the_game();
	} else {
		credits_index++;
	}
}

function alt_ending() {
	credits_page_count = 6;
	credits_text = ["You made it out alive,\nwith a tale to tell...", "Only a week later,\nthe skull of Buturtius,\n an ancient sorcerer,\nreturned with\na vengeance and\n conquered the world.", "Now everyone is sad,\nand they're blaming it\non you, the intern.", "If only there was something\nyou could have done to escape\nwithout helping\nthat manipulative skull...", "A game made by Alex Snow\nin the 2024 FGDAGJJ.", "Thanks for playing."];
}
