huttbunkerfred_template = ConvoTemplate:new {
	initialScreen = "first_screen",
	templateType = "Lua",
	luaClassHandler = "huttbunkerfred_convo_handler",
	screens = {}
}



first_screen = ConvoScreen:new {
	id = "first_screen",
	leftDialog = "",
	customDialogText = "*COUGH* I believe you have some travel permits for me?",
	stopConversation = "false",
	options = {
		{"YES", "check"},
		{"NO", "deny_quest"},
	}
}

huttbunkerfred_template:addScreen(first_screen);
--------------------------------------------------------------------------------------------
accept_quest = ConvoScreen:new {
	id = "accept_quest",
	leftDialog = "",
	customDialogText = "Good, these look to be in order. *COUGH* Hope you know what your heading into.",
	stopConversation = "true",
	options = {
		
	}
}

huttbunkerfred_template:addScreen(accept_quest);
--------------------------------------------------------------------------------------------
check = ConvoScreen:new {
	id = "check",
	leftDialog = "",
	customDialogText = "*COUGH* Let me check them.",
	stopConversation = "true",
	options = {
		
	}
}

huttbunkerfred_template:addScreen(check);
--------------------------------------------------------------------------------------------
not_yet= ConvoScreen:new {
	id = "not_yet",
	leftDialog = "",
	customDialogText = "It appears you do not have the correct documents. *COUGH* I'll be here if you get them!",
	stopConversation = "true",
	options = {
		
	}
}

huttbunkerfred_template:addScreen(not_yet);
--------------------------------------------------------------------------------------------
wrong_docs = ConvoScreen:new {
	id = "wrong_docs",
	leftDialog = "",
	customDialogText = "These are wrong! *COUGH*",
	stopConversation = "true",
	options = {
		
	}
}

huttbunkerfred_template:addScreen(wrong_docs);
--------------------------------------------------------------------------------------------
deny_quest = ConvoScreen:new {
	id = "deny_quest",
	leftDialog = "",
	customDialogText = "Didn't think you looked *COUGH* the type to seek danger!",
	stopConversation = "true",
	options = {
		
	}
}

huttbunkerfred_template:addScreen(wrong_docs);
--------------------------------------------------------------------------------------------
addConversationTemplate("huttbunkerfred_template", huttbunkerfred_template);


