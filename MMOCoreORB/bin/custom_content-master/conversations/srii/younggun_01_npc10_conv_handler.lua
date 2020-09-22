-- Modified for DrDax's Pandorum Collection 2017-8
-- Credit to MTG & Team -- http://www.modthegalaxy.com
---------------------------------------------------------------

younggun_01_npc10_convo_template = ConvoTemplate:new {
	initialScreen = "",
	templateType = "Lua",
	luaClassHandler = "younggun_01_npc10_ConvoHandler",
	screens = {}
}

start_quest = ConvoScreen:new {
	id = "start_quest",
	leftDialog = "",
	customDialogText = "What are you doing in my facility?",
	stopConversation = "false",
	options = {
		{"That's a good question, I wonder if I can talk to you in a moment?", "where"},
		{"I hear you have an awesome new reciepe.", "fight"}
	}
}
younggun_01_npc10_convo_template:addScreen(start_quest);

where = ConvoScreen:new {
	id = "where",
	leftDialog = "",
	customDialogText = "I am pretty busy and I want you out of here.",
	stopConversation = "false",
	options = {
		{"Right.. so Aksere sent me", "fight"},

		{"So, let's get to it, sell me the reciepe.", "alert"}

	}
}
younggun_01_npc10_convo_template:addScreen(where);

alert = ConvoScreen:new {
	id = "alert",
	leftDialog = "",
	customDialogText = "I have called Security - you better get out of here!",
	stopConversation = "true",
	options = { 
	}
}
younggun_01_npc10_convo_template:addScreen(alert);


fight = ConvoScreen:new {
	id = "fight",
	leftDialog = "",
	customDialogText = "I know your here to steal my work!",
	stopConversation = "true",
	options = { 
	}
}
younggun_01_npc10_convo_template:addScreen(fight);

--------------------------------------------------------------------

getgoing = ConvoScreen:new {
	id = "getgoing",
	leftDialog = "",
	customDialogText = "Get lost buddy.",
	stopConversation = "true",
	options = {
		}
}
younggun_01_npc10_convo_template:addScreen(getgoing);
-----------------------------------------

addConversationTemplate("younggun_01_npc10_convo_template", younggun_01_npc10_convo_template);
