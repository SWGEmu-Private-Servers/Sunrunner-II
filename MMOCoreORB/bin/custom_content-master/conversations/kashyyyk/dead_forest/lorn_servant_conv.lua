lornServantConvoTemplate = ConvoTemplate:new {--string/en/conversation/ep3_myyydril_lorn_servant.stf
	initialScreen = "first_screen",
	templateType = "Lua",
	luaClassHandler = "lornServantConvoHandler",
	screens = {}
}

first_screen = ConvoScreen:new {
	id = "first_screen",
	leftDialog = "@conversation/ep3_myyydril_lorn_servant:s_442", -- [As soon as you approach, the once-lifeless droid springs into working condition.] 
	stopConversation = "false",
	options = {
				{"@conversation/ep3_myyydril_lorn_servant:s_446", "information"}, -- What crystal?
	}
}
lornServantConvoTemplate:addScreen(first_screen);

information = ConvoScreen:new {
	id = "information",
	leftDialog = "@conversation/ep3_myyydril_lorn_servant:s_450", -- [The droid takes a moment to process the information.] You are not the messenger. Please leave immediately.
	stopConversation = "false",
	options = {
				{"@conversation/ep3_myyydril_lorn_servant:s_454", "termination"}, -- Wait--I can help. Just tell me what crystal you need!
	}
}
lornServantConvoTemplate:addScreen(information);

termination = ConvoScreen:new {
	id = "termination",
	leftDialog = "@conversation/ep3_myyydril_lorn_servant:s_460", -- Termination in 5.. 4..
	stopConversation = "false",
	options = {
				{"@conversation/ep3_myyydril_lorn_servant:s_468", "process_canceled"}, -- Red crystals? Blue crystals? I can be your messenger!
	}
}
lornServantConvoTemplate:addScreen(termination);

process_canceled = ConvoScreen:new {
	id = "process_canceled",
	leftDialog = "@conversation/ep3_myyydril_lorn_servant:s_473", -- [The droid stops advancing toward you.] Termination process canceled
	stopConversation = "false",
	options = {
				{"@conversation/ep3_myyydril_lorn_servant:s_476", "need_crystal"}, -- Uh--yes, I want to help you. Just tell me what you need.
	}
}
lornServantConvoTemplate:addScreen(process_canceled);

need_crystal = ConvoScreen:new {
	id = "need_crystal",
	leftDialog = "@conversation/ep3_myyydril_lorn_servant:s_480", -- [Treun Lorn continues to speak.] I need a crystal... one that contains a large amount of unnatural energy
	stopConversation = "false",
	options = {
				{"@conversation/ep3_myyydril_lorn_servant:s_484", "accept_mission"}, -- Where can I find them? Do you know?
	}
}
lornServantConvoTemplate:addScreen(need_crystal);

accept_mission = ConvoScreen:new {
	id = "accept_mission",
	leftDialog = "@conversation/ep3_myyydril_lorn_servant:s_488", -- [Treun Lorn's image starts to fade.] Just beyond this room.. *static* red..
	stopConversation = "true",
	options = {}
}
lornServantConvoTemplate:addScreen(accept_mission);

mission_in_progress = ConvoScreen:new {
	id = "mission_in_progress",
	leftDialog = "@conversation/ep3_myyydril_lorn_servant:s_438", -- [The droid doesn't answer.]
	stopConversation = "true",
	options = {}
}
lornServantConvoTemplate:addScreen(mission_in_progress);

mission_complete = ConvoScreen:new {
	id = "mission_complete",
	leftDialog = "@conversation/ep3_myyydril_lorn_servant:s_434", -- The messenger has come. You may enter.
	stopConversation = "true",
	options = {}
}
lornServantConvoTemplate:addScreen(mission_complete);

encounter_busy = ConvoScreen:new {
	id = "encounter_busy",
	leftDialog = "@conversation/ep3_myyydril_lorn_servant:s_418", -- [The servant of Lorn does not respond. Perhaps you should try again later].
	stopConversation = "true",
	options = {}
}
lornServantConvoTemplate:addScreen(encounter_busy);

addConversationTemplate("lornServantConvoTemplate", lornServantConvoTemplate);

