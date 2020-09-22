saschail_template = ConvoTemplate:new {
	initialScreen = "first_screen",
	templateType = "Lua",
	luaClassHandler = "saschail_convo_handler",
	screens = {}
}



first_screen = ConvoScreen:new {
	id = "first_screen",
	leftDialog = "",
	customDialogText = "I believe you have some travel permits for me?",
	stopConversation = "false",
	options = {
		{"YES", "check"},
		{"NO", "deny_quest"},
	}
}

saschail_template:addScreen(first_screen);
--------------------------------------------------------------------------------------------
accept_quest = ConvoScreen:new {
	id = "accept_quest",
	leftDialog = "",
	customDialogText = "Good, these look to be in order. Hope you know what your heading into.",
	stopConversation = "true",
	options = {
		
	}
}

saschail_template:addScreen(accept_quest);
--------------------------------------------------------------------------------------------
check = ConvoScreen:new {
	id = "check",
	leftDialog = "",
	customDialogText = "Let me check them.",
	stopConversation = "true",
	options = {
		
	}
}

saschail_template:addScreen(check);
--------------------------------------------------------------------------------------------
sample_quest_quest_status = ConvoScreen:new {
	id = "quest_status",
	leftDialog = "",
	customDialogText = "",
	stopConversation = "true",
	options = {
		
	}
}

saschail_template:addScreen(sample_quest_quest_status);
--------------------------------------------------------------------------------------------
not_yet= ConvoScreen:new {
	id = "not_yet",
	leftDialog = "",
	customDialogText = "It appears you do not have the correct documents. I'll be here if you get them!",
	stopConversation = "true",
	options = {
		
	}
}

saschail_template:addScreen(not_yet);
--------------------------------------------------------------------------------------------
thank_you = ConvoScreen:new {
	id = "thank_you",
	leftDialog = "",
	customDialogText = "Thanks kid.  Here's 10,000 Galactic Credits, and the travel pass for the factory.  Go and see Sasha'il at the starport in Mos Eisley and she'll sort out the travel arrangements",
	stopConversation = "true",
	options = {
		
	}
}

saschail_template:addScreen(thank_you);
--------------------------------------------------------------------------------------------
completed = ConvoScreen:new {
	id = "completed",
	leftDialog = "",
	customDialogText = "Thanks again for the help with Boba.",
	stopConversation = "false",
	options = {
		
	}
}

saschail_template:addScreen(completed);
	--------------------------------------------------------------------------------------------
quest_reset = ConvoScreen:new {
	id = "quest_reset",
	leftDialog = "",
	customDialogText = "",
	stopConversation = "true",
	options = {
		
	}
}

saschail_template:addScreen(quest_reset);
--------------------------------------------------------------------------------------------
wrong_docs = ConvoScreen:new {
	id = "wrong_docs",
	leftDialog = "",
	customDialogText = "These are wrong!",
	stopConversation = "true",
	options = {
		
	}
}

saschail_template:addScreen(wrong_docs);
--------------------------------------------------------------------------------------------
addConversationTemplate("saschail_template", saschail_template);


