-- Modified for DrDax's Pandorum Collection 2017-8
-- Credit to MTG & Team -- http://www.modthegalaxy.com
---------------------------------------------------------------

younggun_01_npc03_convo_template = ConvoTemplate:new {
	initialScreen = "",
	templateType = "Lua",
	luaClassHandler = "younggun_01_npc03_ConvoHandler",
	screens = {}
}
---------------------------------------------------------
start_quest = ConvoScreen:new {
	id = "start_quest",
	leftDialog = "",
	customDialogText = "You are here to collect for Nym aren't you?",
	stopConversation = "false",
	options = {
		{"I'll make it easy on you, pay up and I will be on my way.", "collect"},
		{"Give me any trouble and I'll make it hard on you.", "threaten"},
		
	}
}
younggun_01_npc03_convo_template:addScreen(start_quest);

---------------------------------------------------------
collect = ConvoScreen:new {
	id = "collect",
	leftDialog = "",
	customDialogText = "Tell Nym it was just business.",
	stopConversation = "true",
	options = {

	}
}
younggun_01_npc03_convo_template:addScreen(collect);
---------------------------------------------------------

threaten = ConvoScreen:new {
	id = "threaten",
	leftDialog = "",
	customDialogText = "OK OK ... relax buddy, I have it right here.",
	stopConversation = "true",
	options = {
	}
}
younggun_01_npc03_convo_template:addScreen(threaten);
----------------------------------------------

quest_complete = ConvoScreen:new {
	id = "quest_complete",
	leftDialog = "",
	customDialogText = "Our business is done.",
	stopConversation = "true",
	options = {
		
	}
}
younggun_01_npc03_convo_template:addScreen(quest_complete);
---------------------------------------------

getgoing = ConvoScreen:new {
	id = "getgoing",
	leftDialog = "",
	customDialogText = "Don't you have something to do?",
	stopConversation = "true",
	options = {
		}
}
younggun_01_npc03_convo_template:addScreen(getgoing);
---------------------------------------------
bye = ConvoScreen:new {
	id = "bye",
	customDialogText = "Ok ... take care.",
	stopConversation = "true",
	options = {}
}
younggun_01_npc03_convo_template:addScreen(bye);

-----------------------
addConversationTemplate("younggun_01_npc03_convo_template", younggun_01_npc03_convo_template);
