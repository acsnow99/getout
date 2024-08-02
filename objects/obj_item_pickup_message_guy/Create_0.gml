
image_speed = 0;
image_index = 0;

event_inherited();

text_array = ["You've done it now, guy...", 
"Oh, don't look at me with that glum face of yours, you know what you did.",
"You shut the door to the warehouse, just like I told you not to, like, ten minutes ago!! Now we're locked in here!", 
"Look, I won't give you a hard time about it; most of the interns end up doing this at least once; but I will make you make this right.",
"Go back into the warehouse, go all the way to the opposite wall, pick up the key in the office, and come back quick.",
"You've already seen some weird stuff workin' here at the Paranormal Disposal Agency, but it gets even weirder when you go in alone.",
"No! I'm not going in there with you, this is your problem. I'm on lunch break now.",
"Just remember, office on the opposite side of the warehouse, grab the key, and come right back."];
end_page_index = 8;

draw_select_offset_y = -22;

function pickup() {
	obj_ctrl_messages.start_message(text_array, end_page_index);
}

