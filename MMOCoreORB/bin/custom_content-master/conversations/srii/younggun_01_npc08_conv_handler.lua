-- Modified for DrDax's Pandorum Collection 2017-8
-- Credit to MTG & Team -- http://www.modthegalaxy.com
---------------------------------------------------------------

younggun_01_npc08_convo_template = ConvoTemplate:new {
	initialScreen = "",
	templateType = "Lua",
	luaClassHandler = "younggun_01_npc08_ConvoHandler",
	screens = {}
}

start_quest = ConvoScreen:new {
	id = "start_quest",
	leftDialog = "",
	customDialogText = "Don't bother me, I am in the middle of something!",
	stopConversation = "false",
	options = {
		{"I need deliver these material somone ordered,and it says here that's you.", "where"},
		{"Youur assistant has a delivery that you need to sign for.", "where"}
	}
}
younggun_01_npc08_convo_template:addScreen(start_quest);

where = ConvoScreen:new {
	id = "where",
	leftDialog = "",
	customDialogText = "Where is this delivery?.",
	stopConversation = "false",
	options = {
		{"I have the transport coming, then you can inspect it, follow me.", "gotoextract"},
		{"Follow me to the transport landing site, it hasn't been unloaded yet.", "gotoextract"}

	}
}
younggun_01_npc08_convo_template:addScreen(where);
----------------------------------------------------------------------------
gotoextract = ConvoScreen:new {
	id = "gotoextract",
	leftDialog = "",
	customDialogText = "Let's make this quick, I am very busy.",
	stopConversation = "true",
	options = {
		}
}
younggun_01_npc08_convo_template:addScreen(gotoextract);

--------------------------------------------------------------------

getgoing = ConvoScreen:new {
	id = "getgoing",
	leftDialog = "",
	customDialogText = "Get lost buddy.",
	stopConversation = "true",
	options = {
		}
}
younggun_01_npc08_convo_template:addScreen(getgoing);
-----------------------------------------

addConversationTemplate("younggun_01_npc08_convo_template", younggun_01_npc08_convo_template);
