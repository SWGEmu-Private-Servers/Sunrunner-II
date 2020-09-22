rebreatherQuestgiverConvoTemplate = ConvoTemplate:new {
	initialScreen = "first_screen",
	templateType = "Lua",
	luaClassHandler = "rebreatherQuestgiverConvoHandler",
	screens = {}
}

first_screen = ConvoScreen:new {
	id = "first_screen",
	customDialogText = "I'm doing some research that may benefit offworlders, care to assist?",
	stopConversation = "false",
	options = {
		{"What kind of research?", "what_things"},
	}
}
rebreatherQuestgiverConvoTemplate:addScreen(first_screen);

what_things = ConvoScreen:new {
	id = "what_things",
	customDialogText = "I want to create a new kind of rebreathing device, using living cells that can produce an indefinite supply of oxygen",
	stopConversation = "false",
	options = {
		{"Living cells...from where?", "not_native"},
	}
}
rebreatherQuestgiverConvoTemplate:addScreen(what_things);

not_native = ConvoScreen:new {
	id = "not_native",
	customDialogText = "Have you noticed the giant amphibians roaming the beaches?  They possess both lungs and gills, and I believe that their gill cells, specifically, can produce the effects I desire.",
	stopConversation = "false",
	options = {
		{"And they must be killed to harvest these cells?", "someones_pet"},
	}
}
rebreatherQuestgiverConvoTemplate:addScreen(not_native);

someones_pet = ConvoScreen:new {
	id = "someones_pet",
	customDialogText = "Unfortunately, yes.  Don't worry though, they're quite abundant, and reproduce quickly.",
	stopConversation = "false",
	options = {
		{"If I do this for you, is there some sort of payment?", "bounty_authorized"},
	}
}
rebreatherQuestgiverConvoTemplate:addScreen(someones_pet);

bounty_authorized = ConvoScreen:new {
	id = "bounty_authorized",
	customDialogText = "Well, I could offer you the fruits of my research, a prototype rebreather that should last you a lifetime!",
	stopConversation = "false",
	options = {
		{"Yes, I'll do it.", "accept_quest"},
		{"No thanks, Maybe later.", "exit_quest"}
	}
}
rebreatherQuestgiverConvoTemplate:addScreen(bounty_authorized);

accept_quest = ConvoScreen:new {
	id = "accept_quest",
	customDialogText = "Excellent!  I will need 15 gill cell samples, and I'll be waiting here, ready to inject the cells once you collect them.",
	stopConversation = "true",
	options = {}
}
rebreatherQuestgiverConvoTemplate:addScreen(accept_quest);

exit_quest = ConvoScreen:new {
	id = "exit_quest",
	customDialogText = "Good luck breathing with a second-hand model.",
	stopConversation = "true",
	options = {}
}
rebreatherQuestgiverConvoTemplate:addScreen(exit_quest);

quest_in_progress = ConvoScreen:new {
	id = "quest_in_progress",
	customDialogText = "I need fifteen cells, come back when you have them all.",
	stopConversation = "true",
	options = {}
}
rebreatherQuestgiverConvoTemplate:addScreen(quest_in_progress);

quest_complete = ConvoScreen:new {
	id = "quest_complete",
	customDialogText = "Let me count, yes!  All fifteen are here, and quite high quality. I can always use more, if you're available - same reward.",
	stopConversation = "false",
	options = {
		{"OK, I can always use a spare", "restart_quest"},
		{"Not right now, maybe later.", "deny_quest"}
	}
}
rebreatherQuestgiverConvoTemplate:addScreen(quest_complete);

restart_quest = ConvoScreen:new {
	id = "restart_quest",
	customDialogText = "Thank you, this will really help me out!",
	stopConversation = "true",
	options = {}
}
rebreatherQuestgiverConvoTemplate:addScreen(restart_quest);

deny_quest = ConvoScreen:new {
	id = "deny_quest",
	customDialogText = "No problem, I'll be here if you change your mind.",
	stopConversation = "true",
	options = {}
}
rebreatherQuestgiverConvoTemplate:addScreen(deny_quest);

quest_interrupt = ConvoScreen:new {
	id = "quest_interrupt",
	customDialogText = "Looks like you didn't finish last time, and all of these cells are spoiled.  Do you want to start again on a fresh batch?",
	stopConversation = "false",
	options = {
		{"Sure, sorry about those spoiled samples.", "restart_quest"},
		{"Not right now, maybe later.", "deny_quest"}
	}
}
rebreatherQuestgiverConvoTemplate:addScreen(quest_interrupt);

restart_repeat = ConvoScreen:new {
	id = "restart_repeat",
	customDialogText = "Glad you returned!  My offer still stands, 15 cell samples will be enough to construct one prototype rebreather.  Do you want to help me?",
	stopConversation = "false",
	options = {
		{"Yes, I'd be glad to.", "restart_quest"},
		{"Not right now, maybe later.", "deny_quest"}
	}
}
rebreatherQuestgiverConvoTemplate:addScreen(restart_repeat);

inventory_full = ConvoScreen:new {
	id = "inventory_full",
	customDialogText = "Clear some room in your inventory to receive your payment.",
	stopConversation = "true",
	options = {}
}
rebreatherQuestgiverConvoTemplate:addScreen(inventory_full);

finished_quest = ConvoScreen:new {
	id = "finished_quest",
	customDialogText = "Thanks again!",
	stopConversation = "true",
	options = {}
}
rebreatherQuestgiverConvoTemplate:addScreen(finished_quest);

addConversationTemplate("rebreatherQuestgiverConvoTemplate", rebreatherQuestgiverConvoTemplate);
