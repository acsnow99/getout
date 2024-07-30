
event_inherited();

alt_dialogue_activated = false;

text_array = ["Hello, intrepid curios collector! As you may see I am but a humble skull trapped within your impressively gargantuan collection.",
"Hmm... Are you trapped here as well? It appears someone may have moved some of these shelves and cabinets around...",
"Let's strike a deal, shall we? I will move my shelf out of your way if you find me my precious treasure that has been 'collected' in this disastrously dilapidated warehouse as well.",
"You may have to return to where your little adventure started to find it; it seems those who put me here wanted to keep it as far away from me as possible.",
"Your clue for finding the treasure is: \"When your eyes are darkened, all that glitters will be found.\"",
"Good luck my friend and accomplice!"
]
end_page_index = 6;

function pickup() {
	if (distance_to_object(obj_item_pickup_treasure) < 128) {
		set_alt_message();
		alt_dialogue_activated = true;
	}
	obj_ctrl_messages.start_message(text_array, end_page_index);
}

function set_alt_message() {
	text_array = ["Yes!",
	"YES!!",
	"AT LONG LAST!!!!",
	"We can leave this hellhole forever! And then pursue our dream of-",
	"Oh, that's right, you're still here, curios collector.",
	"I will let you leave. Thank you for your assistance."
	]
	end_page_index = 6;
}

function open_door() {
	set_not_selected();
	instance_destroy(instance_nearest(x, y, obj_shelf_horiz_1));
	instance_create_layer(x, y, "Instances", obj_shelf_vert_skull);
	instance_destroy(self);
}
