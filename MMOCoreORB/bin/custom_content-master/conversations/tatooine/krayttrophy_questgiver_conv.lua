krayttrophyQuestgiverConvoTemplate = ConvoTemplate:new {
	initialScreen = "first_screen",
	templateType = "Lua",
	luaClassHandler = "krayttrophyQuestgiverConvoHandler",
	screens = {}
}

first_screen = ConvoScreen:new {
	id = "first_screen",
	customDialogText = "Think you have what it takes?",
	stopConversation = "false",
	options = {
		{"What do you mean?", "what_things"},
	}
}
krayttrophyQuestgiverConvoTemplate:addScreen(first_screen);

what_things = ConvoScreen:new {
	id = "what_things",
	customDialogText = "I'm with the Outer Rim Hunting guild, and we're having our annual Ancient Krayt Dragon hunt right now!",
	stopConversation = "false",
	options = {
		{"Why would I do such a thing?", "glory"},
	}
}
krayttrophyQuestgiverConvoTemplate:addScreen(what_things);

glory = ConvoScreen:new {
	id = "glory",
	customDialogText = "For glory, the thrill of the hunt!",
	stopConversation = "false",
	options = {
		{"And what do I get for this?", "reward"},
	}
}
krayttrophyQuestgiverConvoTemplate:addScreen(glory);

reward = ConvoScreen:new {
	id = "reward",
	customDialogText = "A mounted Greater Krayt Dragon head - they're completely extinct now, very rare.",
	stopConversation = "false",
	options = {
		{"That does sound like fair compensation", "why_not"},
	}
}
krayttrophyQuestgiverConvoTemplate:addScreen(reward);

why_not = ConvoScreen:new {
	id = "why_not",
	customDialogText = "So, what do you say?  Do you have what it takes?",
	stopConversation = "false",
	options = {
		{"Yes, I'll do it.", "accept_quest"},
		{"No thanks, Maybe later.", "exit_quest"}
	}
}
krayttrophyQuestgiverConvoTemplate:addScreen(why_not);

accept_quest = ConvoScreen:new {
	id = "accept_quest",
	customDialogText = "Excellent!  Come back to me when you've killed an Ancient Krayt.",
	stopConversation = "true",
	options = {}
}
krayttrophyQuestgiverConvoTemplate:addScreen(accept_quest);

exit_quest = ConvoScreen:new {
	id = "exit_quest",
	customDialogText = "Good luck.",
	stopConversation = "true",
	options = {}
}
krayttrophyQuestgiverConvoTemplate:addScreen(exit_quest);

quest_in_progress = ConvoScreen:new {
	id = "quest_in_progress",
	customDialogText = "Come back when you have something new to show me.",
	stopConversation = "true",
	options = {}
}
krayttrophyQuestgiverConvoTemplate:addScreen(quest_in_progress);

quest_complete = ConvoScreen:new {
	id = "quest_complete",
	customDialogText = "Incredible work!  Nobody has ever... actually completed the task before.",
	stopConversation = "false",
	options = {}
}
krayttrophyQuestgiverConvoTemplate:addScreen(quest_complete);

restart_quest = ConvoScreen:new {
	id = "restart_quest",
	customDialogText = "Wow! You've got to be the best hunter I've ever seen.",
	stopConversation = "true",
	options = {}
}
krayttrophyQuestgiverConvoTemplate:addScreen(restart_quest);

deny_quest = ConvoScreen:new {
	id = "deny_quest",
	customDialogText = "No problem, I'll be here if you change your mind.",
	stopConversation = "true",
	options = {}
}
krayttrophyQuestgiverConvoTemplate:addScreen(deny_quest);

quest_interrupt = ConvoScreen:new {
	id = "quest_interrupt",
	customDialogText = "Looks like you didn't complete the challenge last time.  Do you want to start again?",
	stopConversation = "false",
	options = {
		{"Sure, sorry about that.", "restart_quest"},
		{"Not right now, maybe later.", "deny_quest"}
	}
}
krayttrophyQuestgiverConvoTemplate:addScreen(quest_interrupt);

restart_repeat = ConvoScreen:new {
	id = "restart_repeat",
	customDialogText = "Glad you returned!  My offer still stands, you game?",
	stopConversation = "false",
	options = {
		{"Alright, let's do this", "restart_quest"},
		{"Not right now, maybe later.", "deny_quest"}
	}
}
krayttrophyQuestgiverConvoTemplate:addScreen(restart_repeat);

inventory_full = ConvoScreen:new {
	id = "inventory_full",
	customDialogText = "Clear some room in your inventory to receive your payment.",
	stopConversation = "true",
	options = {}
}
krayttrophyQuestgiverConvoTemplate:addScreen(inventory_full);

addConversationTemplate("krayttrophyQuestgiverConvoTemplate", krayttrophyQuestgiverConvoTemplate);
