-- Modified for DrDax's Pandorum Collection 2017-8
-- Credit to MTG & Team -- http://www.modthegalaxy.com
---------------------------------------------------------------

younggun_01_npc07_convo_template = ConvoTemplate:new {
	initialScreen = "",
	templateType = "Lua",
	luaClassHandler = "younggun_01_npc07_ConvoHandler",
	screens = {}
}

start_quest = ConvoScreen:new {
	id = "start_quest",
	leftDialog = "",
	customDialogText = "What do you want?",
	stopConversation = "false",
	options = {
		{"I need to find the Research Scientist, I bring news from the inner Core worlds.", "where"},
		{"Can you tell me where to find the Head of Research?  I have a delivery for him.", "where"}
	}
}
younggun_01_npc07_convo_template:addScreen(start_quest);

where = ConvoScreen:new {
	id = "where",
	leftDialog = "",
	customDialogText = "He's in the main lab.",
	stopConversation = "false",
	options = {
		{"OK thanks", "gotolab"},
		{"Great show me the way", "gotolab"}
	}
}
younggun_01_npc07_convo_template:addScreen(where);
----------------------------------------------------------------------------
gotolab = ConvoScreen:new {
	id = "gotolab",
	leftDialog = "",
	customDialogText = "Just folllow the hall down and take a right into the main lab.",
	stopConversation = "true",
	options = {
		}
}
younggun_01_npc07_convo_template:addScreen(gotolab);

--------------------------------------------------------------------

getgoing = ConvoScreen:new {
	id = "getgoing",
	leftDialog = "",

	customDialogText = "What do you need?",
	stopConversation = "false",
	options = {  {"I can't find the scientist.", "gotolab"},
		{"Where is he again?", "respawn"}
		}
}
younggun_01_npc07_convo_template:addScreen(getgoing);

----------------------------------------------------------------------------
respawn = ConvoScreen:new {
	id = "respawn",
	leftDialog = "",
	customDialogText = "He should be there now.  Just folllow the hall down and take a right into the main lab.",

	stopConversation = "true",
	options = {
		}
}

younggun_01_npc07_convo_template:addScreen(respawn);

--------------------------------------------------------------------

addConversationTemplate("younggun_01_npc07_convo_template", younggun_01_npc07_convo_template);
