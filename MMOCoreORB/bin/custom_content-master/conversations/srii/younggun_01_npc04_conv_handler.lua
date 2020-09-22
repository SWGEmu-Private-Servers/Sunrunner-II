-- Modified for DrDax's Pandorum Collection 2017-8
-- Credit to MTG & Team -- http://www.modthegalaxy.com
---------------------------------------------------------------

younggun_01_npc04_convo_template = ConvoTemplate:new {
	initialScreen = "",
	templateType = "Lua",
	luaClassHandler = "younggun_01_npc04_ConvoHandler",
	screens = {}
}
---------------------------------------------------------
start_quest = ConvoScreen:new {
	id = "start_quest",
	leftDialog = "",
	customDialogText = "What can I do ya for?",
	stopConversation = "false",
	options = {
		{"I Have something for you, but I need some information.", "info"},
		{"A special delivery...", "deliver"}
		
	}
}
younggun_01_npc04_convo_template:addScreen(start_quest);

---------------------------------------------------------
info = ConvoScreen:new {
	id = "info",
	leftDialog = "",
	customDialogText = "The stuff looks like it's all there, now what did you need to know?",
	stopConversation = "false",
	options = {
		{"I hear you know where Eritha Summiick is.", "where"},
		{"nothing, see ya around", "good_deal"}
	}
}
younggun_01_npc04_convo_template:addScreen(info);
---------------------------------------------------------

good_deal = ConvoScreen:new {
	id = "good_deal",
	leftDialog = "",
	customDialogText = "So thanks and keep the crate.",
	stopConversation = "true",
	options = {
	}
}
younggun_01_npc04_convo_template:addScreen(good_deal);
----------------------------------------------
where = ConvoScreen:new {
	id = "where",
	leftDialog = "",
	customDialogText = "I know lots of people and where they are at.  For the right price I would tell you, but since you brought this to me, I'll update your datapad with his location.",
	stopConversation = "false",
	options = { 
			{"thanks, see ya around", "good_deal"}
	}
}
younggun_01_npc04_convo_template:addScreen(where);
----------------------------------
quest_complete = ConvoScreen:new {
	id = "quest_complete",
	leftDialog = "",
	customDialogText = "Our business is done.",
	stopConversation = "true",
	options = {
		
	}
}
younggun_01_npc04_convo_template:addScreen(quest_complete);
---------------------------------------------

getgoing = ConvoScreen:new {
	id = "getgoing",
	leftDialog = "",
	customDialogText = "Don't you have something to do?",
	stopConversation = "true",
	options = {
		}
}
younggun_01_npc04_convo_template:addScreen(getgoing);
---------------------------------------------
bye = ConvoScreen:new {
	id = "bye",
	customDialogText = "Ok ... take care.",
	stopConversation = "true",
	options = {}
}
younggun_01_npc04_convo_template:addScreen(bye);

-----------------------
addConversationTemplate("younggun_01_npc04_convo_template", younggun_01_npc04_convo_template);
