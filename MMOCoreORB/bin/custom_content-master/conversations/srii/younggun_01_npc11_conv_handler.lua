-- Modified for DrDax's Pandorum Collection 2017-8
-- Credit to MTG & Team -- http://www.modthegalaxy.com
---------------------------------------------------------------

younggun_01_npc11_convo_template = ConvoTemplate:new {
	initialScreen = "",
	templateType = "Lua",
	luaClassHandler = "younggun_01_npc11_ConvoHandler",
	screens = {}
}

start_quest = ConvoScreen:new {
	id = "start_quest",
	leftDialog = "",
	customDialogText = "I don't know you, what are you doing here?",
	stopConversation = "false",
	options = {
		{"Aksere sent me and says you might have something of hers.", "where"},
		{"I don't like your attitude.", "fight"}
	}
}
younggun_01_npc11_convo_template:addScreen(start_quest);

where = ConvoScreen:new {
	id = "where",
	leftDialog = "",
	customDialogText = "Hey, we're even, she is just getting greedy.",
	stopConversation = "false",
	options = {
		{"I hate to tell her that...", "fight"},
		{"Sounds like there is a miscommunication, somebody is going to pay my fee.", "alert"}
	}
}
younggun_01_npc11_convo_template:addScreen(where);

alert = ConvoScreen:new {
	id = "alert",
	leftDialog = "",
	customDialogText = "Come and get your fee!",
	stopConversation = "true",
	options = { 
	}
}
younggun_01_npc11_convo_template:addScreen(alert);


fight = ConvoScreen:new {
	id = "fight",
	leftDialog = "",
	customDialogText = "You picked the wrong guy to fight!",
	stopConversation = "true",
	options = { 
	}
}
younggun_01_npc11_convo_template:addScreen(fight);

--------------------------------------------------------------------

getgoing = ConvoScreen:new {
	id = "getgoing",
	leftDialog = "",
	customDialogText = "Get lost buddy.",
	stopConversation = "true",
	options = {
		}
}
younggun_01_npc11_convo_template:addScreen(getgoing);
-----------------------------------------

addConversationTemplate("younggun_01_npc11_convo_template", younggun_01_npc11_convo_template);
