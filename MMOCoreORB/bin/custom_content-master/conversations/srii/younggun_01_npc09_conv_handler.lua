-- Modified for DrDax's Pandorum Collection 2017-8
-- Credit to MTG & Team -- http://www.modthegalaxy.com
---------------------------------------------------------------

younggun_01_npc09_convo_template = ConvoTemplate:new {
	initialScreen = "",
	templateType = "Lua",
	luaClassHandler = "younggun_01_npc09_ConvoHandler", -- Nym Coordinator --
	screens = {}
}


start_quest = ConvoScreen:new {
	id = "start_quest",
	leftDialog = "",
	customDialogText = "Nym wants you to acquire the latest spice recipe from Traelo Veepir.  He works alone and suspisous of anyone.  Your job is to get that recipe by any means.  What you need to know is that he keeps the data in his private terminal, make sure you access it to get what we need.",
	stopConversation = "false",
	options = {
		{"I am ready to go, give me the way point", "find_spice"},
		{"I bumped my head and forgot what I am doing...", "info_mission"},
		{"Let me do a couple of things before we go", "stuff"},
	}
}
younggun_01_npc09_convo_template:addScreen(start_quest);

start_second = ConvoScreen:new {
	id = "start_second",
	leftDialog = "",
	customDialogText = "Ok, this is the last task before you return to Tatooine.  There is a deadbeat that owes big.  Nym says settle the account anyway you can.",
	stopConversation = "false",
	options = {    {"I can do that.", "find_deadbeat"},
		{"Let me do a couple of things before we go", "stuff"},
	}
}
younggun_01_npc09_convo_template:addScreen(start_second);

continue_quest_two = ConvoScreen:new {
	id = "continue_quest_two",
	leftDialog = "",
	customDialogText = "What do you need?",
	stopConversation = "false",
	options = {
		{"Give me the way point again.", "find_deadbeat"},
		{"I bumped my head and forgot what I am doing...", "info_mission"},
	}
}
younggun_01_npc09_convo_template:addScreen(continue_quest_two);


continue_quest = ConvoScreen:new {
	id = "continue_quest",
	leftDialog = "",
	customDialogText = "What do you need?",
	stopConversation = "false",
	options = {
		{"Give me the way point again.", "find_spice"},
		{"I bumped my head and forgot what I am doing...", "info_mission"},
	}
}
younggun_01_npc09_convo_template:addScreen(continue_quest);


info_mission = ConvoScreen:new {
	id = "info_mission",
	leftDialog = "",
	customDialogText = "All set now?",
	stopConversation = "false",
	options = {
		{"Yep", "bye"},
		{"Let me do a couple of things before we go", "stuff"},
	}
}
younggun_01_npc09_convo_template:addScreen(info_mission);

find_spice = ConvoScreen:new {
	id = "find_spice",
	leftDialog = "",
	customDialogText = "All set now?",
	stopConversation = "false",
	options = {
		{"Yep", "bye"},

	}
}
younggun_01_npc09_convo_template:addScreen(find_spice);

find_deadbeat = ConvoScreen:new {
	id = "find_deadbeat",
	leftDialog = "",
	customDialogText = "All set now?",
	stopConversation = "false",
	options = {
		{"Yep", "bye"},
		{"Give me the way point to the debtor again.", "find_deadbeat"},
	}
}
younggun_01_npc09_convo_template:addScreen(find_deadbeat);

------------------------------------------------------------------------------------------------

stuff = ConvoScreen:new {   
	id = "stuff",
	leftDialog = "",
	customDialogText = "Make a waypoint so you can return here later.",
	stopConversation = "true",
	options = {
			
	}
}
younggun_01_npc09_convo_template:addScreen(stuff);
----------------------------------------------------
bye = ConvoScreen:new {
	id = "bye",
	customDialogText = "I'll be around.",
	stopConversation = "true",
	options = {}
}
younggun_01_npc09_convo_template:addScreen(bye);


----------------------------------------------------
talk_to_darrel = ConvoScreen:new {
	id = "talk_to_darrel",
	customDialogText = "He should be around.",
	stopConversation = "true",
	options = {}
}
younggun_01_npc09_convo_template:addScreen(talk_to_darrel);

-----------------------------------------------------
------
reset_quest = ConvoScreen:new {
	id = "reset_quest",
	customDialogText = "Ok .. I will reset the quest just for you.",
	stopConversation = "false",
	options = {  {"test: setup quest to active J.", "setup_quest"}
	}
}
younggun_01_npc09_convo_template:addScreen(reset_quest);
-----------------------------------------
setup_quest = ConvoScreen:new {
	id = "setup_quest",
	customDialogText = "Ok .. set to test from this point J forward .",
	stopConversation = "true",
	options = {}
}
younggun_01_npc09_convo_template:addScreen(setup_quest);

completed_quest = ConvoScreen:new {
	id = "completed_quest",
	leftDialog = "",
	customDialogText = "Well done Young Gun!  Head back to Tatooine and talk to Aksere.",
	stopConversation = "false",
	options = {
		{"Hmmm..where is my ride?", "talk_to_darrel"},
		{"Let me do a couple of things before we go", "stuff"},
	}
}
younggun_01_npc09_convo_template:addScreen(completed_quest);

getgoing = ConvoScreen:new {
	id = "getgoing",
	leftDialog = "",
	customDialogText = "Don't you have something to do?",
	stopConversation = "true",
	options = { 


		}
}
younggun_01_npc09_convo_template:addScreen(getgoing);

-------------------------------------------------------------------------
addConversationTemplate("younggun_01_npc09_convo_template", younggun_01_npc09_convo_template);

