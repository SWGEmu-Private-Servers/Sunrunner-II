orthaLedoxConvoTemplate = ConvoTemplate:new {
	initialScreen = "first_screen",
	templateType = "Lua",
	luaClassHandler = "orthaLedoxConvoHandler",
	screens = {}
}

first_screen = ConvoScreen:new {
	id = "first_screen",
	leftDialog = "@conversation/ep3_kachirho_varactyl_hunter:s_379",--Those things are a menace. They are ravenous and are destroying everything that they can sink their claws into.
	stopConversation = "false",
	options = {
		{"@conversation/ep3_kachirho_varactyl_hunter:s_381", "what_things"},--What things?
	}
}
orthaLedoxConvoTemplate:addScreen(first_screen);

what_things = ConvoScreen:new {
	id = "what_things",
	leftDialog = "@conversation/ep3_kachirho_varactyl_hunter:s_383",--The varactyl, of course.
	stopConversation = "false",
	options = {
		{"@conversation/ep3_kachirho_varactyl_hunter:s_385", "not_native"},--Why are the varactyl such a problem?
	}
}
orthaLedoxConvoTemplate:addScreen(what_things);

not_native = ConvoScreen:new {
	id = "not_native",
	leftDialog = "@conversation/ep3_kachirho_varactyl_hunter:s_387",--Mainly because they are not supposed to be here.
	stopConversation = "false",
	options = {
		{"@conversation/ep3_kachirho_varactyl_hunter:s_389", "someones_pet"},--If they are not native, how did they get here?
	}
}
orthaLedoxConvoTemplate:addScreen(not_native);

someones_pet = ConvoScreen:new {
	id = "someones_pet",
	leftDialog = "@conversation/ep3_kachirho_varactyl_hunter:s_391",--Honestly, I don't know. Most likely it started with someone's pet getting free.
	stopConversation = "false",
	options = {
		{"@conversation/ep3_kachirho_varactyl_hunter:s_393", "bounty_authorized"},--How are you going to deal with them?
	}
}
orthaLedoxConvoTemplate:addScreen(someones_pet);

bounty_authorized = ConvoScreen:new {
	id = "bounty_authorized",
	leftDialog = "@conversation/ep3_kachirho_varactyl_hunter:s_395",--I have been authorized to offer a bounty on the killing of varactyl.
	stopConversation = "false",
	options = {
		{"@conversation/ep3_kachirho_varactyl_hunter:s_397", "accept_quest"},--Yes, sign me up.
		{"@conversation/ep3_kachirho_varactyl_hunter:s_401", "exit_quest"}--No thanks. Maybe later.
	}
}
orthaLedoxConvoTemplate:addScreen(bounty_authorized);

accept_quest = ConvoScreen:new {
	id = "accept_quest",
	leftDialog = "@conversation/ep3_kachirho_varactyl_hunter:s_399",--Alright. You know the deal. Eight varactyl plumes for two thousand credits.
	stopConversation = "true",
	options = {}
}
orthaLedoxConvoTemplate:addScreen(accept_quest);

exit_quest = ConvoScreen:new {
	id = "exit_quest",
	leftDialog = "@conversation/ep3_kachirho_varactyl_hunter:s_403",--Yeah...maybe later.
	stopConversation = "true",
	options = {}
}
orthaLedoxConvoTemplate:addScreen(exit_quest);

quest_in_progress = ConvoScreen:new {
	id = "quest_in_progress",
	leftDialog = "@conversation/ep3_kachirho_varactyl_hunter:s_377",--Sorry, buddy. I don't see eight plumes there. I only pay out the bounty once all eight varactyl have been killed.
	stopConversation = "true",
	options = {}
}
orthaLedoxConvoTemplate:addScreen(quest_in_progress);

quest_complete = ConvoScreen:new {
	id = "quest_complete",
	leftDialog = "@conversation/ep3_kachirho_varactyl_hunter:s_367",--Welcome back. I hope the hunt went well for you. Let me see here...yep that is all eight of them.
	stopConversation = "false",
	options = {
		{"@conversation/ep3_kachirho_varactyl_hunter:s_369", "restart_quest"},--Sure, I am up for making some more credits.
		{"@conversation/ep3_kachirho_varactyl_hunter:s_373", "deny_quest"}--Not right now. Maybe later.
	}
}
orthaLedoxConvoTemplate:addScreen(quest_complete);

restart_quest = ConvoScreen:new {
	id = "restart_quest",
	leftDialog = "@conversation/ep3_kachirho_varactyl_hunter:s_371",--Yeah, I figured you would jump at the offer. Same deal as before.
	stopConversation = "true",
	options = {}
}
orthaLedoxConvoTemplate:addScreen(restart_quest);

deny_quest = ConvoScreen:new {
	id = "deny_quest",
	leftDialog = "@conversation/ep3_kachirho_varactyl_hunter:s_375",--No problem. Just come back by and see me if you change your mind.
	stopConversation = "true",
	options = {}
}
orthaLedoxConvoTemplate:addScreen(deny_quest);

quest_interrupt = ConvoScreen:new {
	id = "quest_interrupt",
	customDialogText = "Looks like you didn't finish your last bounty. I only pay out the bounty once all eight varactyl have been killed. Do you want to try again?",
	stopConversation = "false",
	options = {
		{"@conversation/ep3_kachirho_varactyl_hunter:s_369", "restart_quest"},--Sure, I am up for making some more credits.
		{"@conversation/ep3_kachirho_varactyl_hunter:s_373", "deny_quest"}--Not right now. Maybe later.
	}
}
orthaLedoxConvoTemplate:addScreen(quest_interrupt);

restart_repeat = ConvoScreen:new {
	id = "restart_repeat",
	customDialogText = "I figured you would be back. My offer is still good if you are interested. Kill eight varactyl, bring me their plumes, and I will pay a bounty of two thousand credits. What do you say?",
	stopConversation = "false",
	options = {
		{"@conversation/ep3_kachirho_varactyl_hunter:s_369", "restart_quest"},--Sure, I am up for making some more credits.
		{"@conversation/ep3_kachirho_varactyl_hunter:s_373", "deny_quest"}--Not right now. Maybe later.
	}
}
orthaLedoxConvoTemplate:addScreen(restart_repeat);

addConversationTemplate("orthaLedoxConvoTemplate", orthaLedoxConvoTemplate);
