vourk_verzremp_convo_template = ConvoTemplate:new {
	initialScreen = "",
	templateType = "Lua",
	luaClassHandler = "BibsOfferConvoHandler",
	screens = {}
}

first_screen = ConvoScreen:new {
	id = "first_screen",
	leftDialog = "",
	customDialogText = "You have to hurry. Jabba is already searching for you.",
	stopConversation = "false",
	options = {
		{"Why does Jabba want to force me to work for him?", "cant_explain"}
	}
}
vourk_verzremp_convo_template:addScreen(first_screen);

cant_explain = ConvoScreen:new {
	id = "cant_explain",
	leftDialog = "",
	customDialogText = "I can't explain right now. The Empire wanted you because you're special, and that's good enough for him to want you too. That's all I can say right now.",
	stopConversation = "false",
	options = {
		{"So what do I do?", "inside_information"},
		{"I'm not doing anything you ask, until I know why Jabba is after me.", "something_special"}
	}
}
vourk_verzremp_convo_template:addScreen(cant_explain);

something_special = ConvoScreen:new {
	id = "something_special",
	leftDialog = "",
	customDialogText = "The Empire thinks you're something special. That's enough to get Jabba's interest. You also were rescued by Han Solo, someone Jabba has a burning interest in. Jabba figures one way or another, you're a gold mine that just fell into his lap.",
	stopConversation = "false",
	options = {
		{"So what do I do now?", "involved_personally"}
	}
}
vourk_verzremp_convo_template:addScreen(something_special);

involved_personally = ConvoScreen:new {
	id = "involved_personally",
	leftDialog = "",
	customDialogText = "Well, I doubt Jabba will get involved in this personally. He'll probably have someone like Bib take care of you.",
	stopConversation = "false",
	options = {
		{"I don't care who contacts me, I don't want to work for Jabba.", "on_the_inside"}
	}
}
vourk_verzremp_convo_template:addScreen(involved_personally);

on_the_inside = ConvoScreen:new {
	id = "on_the_inside",
	leftDialog = "",
	customDialogText = "Who does? I know someone on the inside. His name is Reimos. He's being forced to work for Jabba also.",
	stopConversation = "false",
	options = {
		{"How can he help me? It sounds like he has his own problems.", "shipping_company"}
	}
}
vourk_verzremp_convo_template:addScreen(on_the_inside);

shipping_company = ConvoScreen:new {
	id = "shipping_company",
	leftDialog = "",
	customDialogText = "He thinks a local shipping company is a front for something terrible. He says he's on to a way we can stop these horrible crimes and get square with Jabba all at once. You just have to play along.",
	stopConversation = "false",
	options = {
		{"So how do I meet this guy?", "sensitive_work"}
	}
}
vourk_verzremp_convo_template:addScreen(shipping_company);

sensitive_work = ConvoScreen:new {
	id = "sensitive_work",
	leftDialog = "",
	customDialogText = "You will, but you have to work your way up to it. Reimos is doing sensitive work for Jabba. He's not going to put someone he doesn't trust on that job.",
	stopConversation = "false",
	options = {
		{"How will I know who is on our side?", "you_wont"}
	}
}
vourk_verzremp_convo_template:addScreen(sensitive_work);

you_wont = ConvoScreen:new {
	id = "you_wont",
	leftDialog = "",
	customDialogText = "You won't. Just do what Bib asks and we'll handle the rest.",
	stopConversation = "false",
	options = {
		{"Ok, I'll do what he says.", "accept_mission_one"},
		{"But I don't know anything about Mos Eisley!", "find_trehla"}
		--{"What if he asks me to fly a ship for him?", ""}
	}
}
vourk_verzremp_convo_template:addScreen(you_wont);

find_trehla = ConvoScreen:new {
	id = "find_trehla",
	leftDialog = "",
	customDialogText = "Trehla can show you what you need to know. She's got no love for Jabba, that's for sure.",
	stopConversation = "true",
	options = {}
}
vourk_verzremp_convo_template:addScreen(find_trehla);

sensitive_work = ConvoScreen:new {
	id = "sensitive_work",
	leftDialog = "",
	customDialogText = "Have you finished with Trehla yet?",
	stopConversation = "false",
	options = {
		{"Not quite.", "finnish_trehla"}
	}
}
vourk_verzremp_convo_template:addScreen(sensitive_work);

finnish_trehla = ConvoScreen:new {
	id = "finnish_trehla",
	leftDialog = "",
	customDialogText = "Well hurry, you don't want to make Jabba angry.",
	stopConversation = "true",
	options = {}
}
vourk_verzremp_convo_template:addScreen(finnish_trehla);

inside_information = ConvoScreen:new {
	id = "inside_information",
	leftDialog = "",
	customDialogText = "I have inside information that Jabba's man Bib is going to contact you shortly. Just do what he asks. We'll make sure to get you out of this situation soon.",
	stopConversation = "false",
	options = {
		{"Is he going to kill me?", "bib_asks"}
	}
}
vourk_verzremp_convo_template:addScreen(inside_information);

bib_asks = ConvoScreen:new {
	id = "bib_asks",
	leftDialog = "",
	customDialogText = "No, he wants you to work for him. We've got people on the inside that will be able to help you later. Just do what Bib asks.",
	stopConversation = "false",
	options = {
		{"How will I know who I can trust?", "you_wont"}
	}
}
vourk_verzremp_convo_template:addScreen(bib_asks);

you_wont = ConvoScreen:new {
	id = "you_wont",
	leftDialog = "",
	customDialogText = "You won't. Just do what Bib asks and we'll handle the rest.",
	stopConversation = "false",
	options = {
		{"Ok, I'll do what he says.", "accept_mission_one"}
	}
}
vourk_verzremp_convo_template:addScreen(you_wont);

accept_mission_one = ConvoScreen:new {
	id = "accept_mission_one",
	leftDialog = "",
	customDialogText = "Go now!",--Next quest, go to mayor.
	stopConversation = "true",
	options = {}
}
vourk_verzremp_convo_template:addScreen(accept_mission_one);

quest_complete = ConvoScreen:new {
	id = "quest_complete",
	leftDialog = "",
	customDialogText = "",
	stopConversation = "true",
	options = {}
}
vourk_verzremp_convo_template:addScreen(quest_complete);

quest_completed = ConvoScreen:new {
	id = "quest_completed",
	leftDialog = "",
	customDialogText = "",
	stopConversation = "true",
	options = {}
}
vourk_verzremp_convo_template:addScreen(quest_completed);

reset_quest = ConvoScreen:new {
	id = "reset_quest",
	customDialogText = "Ok Will reset",
	stopConversation = "true",
	options = {}
}
vourk_verzremp_convo_template:addScreen(reset_quest);

too_early = ConvoScreen:new {
	id = "too_early",
	leftDialog = "",
	customDialogText = "I think you need to speak to someone else first.",
	stopConversation = "true",
	options = {}
}
vourk_verzremp_convo_template:addScreen(too_early);

see_mayor = ConvoScreen:new {
	id = "see_mayor",
	leftDialog = "",
	customDialogText = "You better hurry if you don't want wnat to get on Jabbas bad side.",
	stopConversation = "false",
	options = {
		{"I don't want this mission right now.", "reset_quest"}}
}
vourk_verzremp_convo_template:addScreen(see_mayor);

addConversationTemplate("vourk_verzremp_convo_template", vourk_verzremp_convo_template);
