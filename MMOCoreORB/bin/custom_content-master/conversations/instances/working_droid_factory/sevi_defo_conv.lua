sevi_defo_template = ConvoTemplate:new {
	initialScreen = "first_screen",
	templateType = "Lua",
	luaClassHandler = "sevi_defo_convo_handler",
	screens = {}
}



first_screen = ConvoScreen:new {
	id = "first_screen",
	leftDialog = "",
	customDialogText = "Word has it you need access to the working droid factory. I can get you access but you'll have to do a favour for me first.  Will you help?",
	stopConversation = "false",
	options = {
		{"YES", "accept_quest"},
		{"NO", "deny_quest"},
		{"What sort of favour?", "favour"},
	}
}

sevi_defo_template:addScreen(first_screen);
--------------------------------------------------------------------------------------------
favour = ConvoScreen:new {
	id = "favour",
	leftDialog = "",
	customDialogText = "Go and kill Boba Fett, He wants to kill Han Solo, a good friend of mine",
	stopConversation = "false",
	options = {
		{"YES", "accept_quest"},
		{"NO", "deny_quest"},
	}
}

sevi_defo_template:addScreen(favour);
--------------------------------------------------------------------------------------------
accept_quest = ConvoScreen:new {
	id = "accept_quest",
	leftDialog = "",
	customDialogText = "He's right over there.  Go talk to him.  See what you can do",
	stopConversation = "true",
	options = {
		
	}
}

sevi_defo_template:addScreen(accept_quest);
--------------------------------------------------------------------------------------------
sample_quest_quest_status = ConvoScreen:new {
	id = "quest_status",
	leftDialog = "",
	customDialogText = "",
	stopConversation = "true",
	options = {
		
	}
}

sevi_defo_template:addScreen(sample_quest_quest_status);
--------------------------------------------------------------------------------------------
not_yet= ConvoScreen:new {
	id = "not_yet",
	leftDialog = "",
	customDialogText = "Hey he's not dead yet?  I don't have much time.",
	stopConversation = "true",
	options = {
		
	}
}

sevi_defo_template:addScreen(not_yet);
--------------------------------------------------------------------------------------------
thank_you = ConvoScreen:new {
	id = "thank_you",
	leftDialog = "",
	customDialogText = "Thanks kid.  Here's 10,000 Galactic Credits, and the travel pass for the factory.  Go and see Sasha'il at the starport in Mos Eisley and she'll sort out the travel arrangements",
	stopConversation = "true",
	options = {
		
	}
}

sevi_defo_template:addScreen(thank_you);
--------------------------------------------------------------------------------------------
completed = ConvoScreen:new {
	id = "completed",
	leftDialog = "",
	customDialogText = "Thanks again for the help with Boba.",
	stopConversation = "false",
	options = {
		
	}
}

sevi_defo_template:addScreen(completed);
	--------------------------------------------------------------------------------------------
quest_reset = ConvoScreen:new {
	id = "quest_reset",
	leftDialog = "",
	customDialogText = "",
	stopConversation = "true",
	options = {
		
	}
}

sevi_defo_template:addScreen(quest_reset);
--------------------------------------------------------------------------------------------
addConversationTemplate("sevi_defo_template", sevi_defo_template);


