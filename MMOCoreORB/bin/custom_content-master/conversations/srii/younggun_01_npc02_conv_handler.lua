-- Modified for DrDax's Pandorum Collection 2017-8
-- Credit to MTG & Team -- http://www.modthegalaxy.com
---------------------------------------------------------------

younggun_01_npc02_convo_template = ConvoTemplate:new {
	initialScreen = "",
	templateType = "Lua",
	luaClassHandler = "younggun_01_npc02_ConvoHandler",
	screens = {}
}

start_quest = ConvoScreen:new {
	id = "start_quest",
	leftDialog = "",
	customDialogText = "What are you doing here?",
	stopConversation = "false",
	options = {
		{"I hear you know where Eritha Summiick is.", "where"},
		{"Oh, wrong guy, bye.", "bye"},
	}
}
younggun_01_npc02_convo_template:addScreen(start_quest);

where = ConvoScreen:new {
	id = "where",
	leftDialog = "",
	customDialogText = "I might,  but first if you would do me a favor...",
	stopConversation = "false",
	options = {
		{"What's the favor?", "favor"},
	}
}
younggun_01_npc02_convo_template:addScreen(where);

favor = ConvoScreen:new {
	id = "favor",
	leftDialog = "",
	customDialogText = "I need to drop of these supplies to my contact at the Fallen Star..  and he knows everyone that comes and goes there.",
	stopConversation = "false",
	options = {
		{"I don't care about that, give the location now.", "debtor_location"},
		{"OK, I'll do it... now give me Eritha's location", "deliver"},
	}
}
younggun_01_npc02_convo_template:addScreen(favor);

deliver = ConvoScreen:new {
	id = "deliver",
	leftDialog = "",
	customDialogText = "I added the waypoint to your datapad.",
	stopConversation = "true",
	options = {
	}
}
younggun_01_npc02_convo_template:addScreen(deliver);

getcrate_failed = ConvoScreen:new {
	id = "getcrate_failed",
	leftDialog = "",
	customDialogText = "Check your inventory, you appear to be full.",
	stopConversation = "false",
	options = {  {"Try again", "deliver"},
	}
}
younggun_01_npc02_convo_template:addScreen(getcrate_failed);

debtor_location = ConvoScreen:new {
	id = "debtor_location",
	leftDialog = "",
	customDialogText = "He is somewhere near the Fallen Star in the Junk Yard.",
	stopConversation = "true",
	options = { }
}
younggun_01_npc02_convo_template:addScreen(debtor_location);

--------------------------------------------------------------------
quest_complete = ConvoScreen:new {
	id = "quest_complete",
	leftDialog = "",
	customDialogText = "I beleive our business is done.",
	stopConversation = "true",
	options = { }
}
younggun_01_npc02_convo_template:addScreen(quest_complete);
-------------------------------------------------------------------
getgoing = ConvoScreen:new {
	id = "getgoing",
	leftDialog = "",
	customDialogText = "Don't you have something to do?",
	stopConversation = "true",
	options = {
		}
}
younggun_01_npc02_convo_template:addScreen(getgoing);
-----------------------------------------
bye = ConvoScreen:new {
	id = "bye",
	customDialogText = "Ok ... take care.",
	stopConversation = "true",
	options = {}
}
younggun_01_npc02_convo_template:addScreen(bye);
-----------------------

addConversationTemplate("younggun_01_npc02_convo_template", younggun_01_npc02_convo_template);
