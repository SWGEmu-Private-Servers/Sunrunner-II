-- Modified for DrDax's Pandorum Collection 2017-8
-- Credit to MTG & Team -- http://www.modthegalaxy.com
---------------------------------------------------------------

younggun_01_npc06_convo_template = ConvoTemplate:new {
	initialScreen = "",
	templateType = "Lua",
	luaClassHandler = "younggun_01_npc06_ConvoHandler",
	screens = {}
}

start_quest = ConvoScreen:new {
	id = "start_quest",
	leftDialog = "",
	customDialogText = "Hey buddy ....",
	stopConversation = "false",
	options = {
		{"That ship looks familar, where have I seen it.. and you?", "where"},
		{"I want my nav computer you took from me in Mos Eisley last month.", "reclaim"}
	}
}
younggun_01_npc06_convo_template:addScreen(start_quest);

where = ConvoScreen:new {
	id = "where",
	leftDialog = "",
	customDialogText = "It might have been Mos Eisley.",
	stopConversation = "false",
	options = {
		{"Right.. so Aksere sent me", "reclaim"},
		{"Yepand it's time to settle up that debt", "reclaim"}
	}
}
younggun_01_npc06_convo_template:addScreen(where);

reclaim = ConvoScreen:new {
	id = "reclaim",
	leftDialog = "",
	customDialogText = "Hey I don't know you or owe you!",
	stopConversation = "false",
	options = {
		{"<Pull out your weapon> Time to payup!", "payup"},
		{"OK, looks like it's going to be the hard way", "payup"}
	}
}
younggun_01_npc06_convo_template:addScreen(reclaim);

payup = ConvoScreen:new {
	id = "payup",
	leftDialog = "",
	customDialogText = "Get ready to die!",
	stopConversation = "true",
	options = { 
	}
}
younggun_01_npc06_convo_template:addScreen(payup);

--------------------------------------------------------------------

getgoing = ConvoScreen:new {
	id = "getgoing",
	leftDialog = "",
	customDialogText = "Get lost buddy.",
	stopConversation = "true",
	options = {
		}
}
younggun_01_npc06_convo_template:addScreen(getgoing);
-----------------------------------------

addConversationTemplate("younggun_01_npc06_convo_template", younggun_01_npc06_convo_template);
