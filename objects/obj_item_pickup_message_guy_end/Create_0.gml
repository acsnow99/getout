
image_speed = 0;
image_index = 0;

event_inherited();

interact_distance = 64;

text_array = [
"Finally! Took you long enough. Now let's get out of here.", 
"Gosh, you look like you've seen a ghost.",
"Must've been a light day today, then.",
"Don't worry, you'll get the hang of things around here. Just keep doin' what you did today.",
"Oh, and as long as you don't help out any of the maniacal skulls in there, of course. Don't want to get into that whole mess again. Geez."
];
end_page_index = 5;

draw_select_offset_y = -22;

function pickup() {
	obj_ctrl_messages.start_message(text_array, end_page_index);
}

