-- Modified for DrDax's Pandorum Collection 2017-8
-- Credit to MTG & Team -- http://www.modthegalaxy.com
---------------------------------------------------------------

younggun_01_npc01_convo_template = ConvoTemplate:new {
	initialScreen = "",
	templateType = "Lua",
	luaClassHandler = "younggun_01_npc01_ConvoHandler", -- Nym Coordinator --
	screens = {}
}

start_quest = ConvoScreen:new {
	id = "start_quest",
	leftDialog = "",
	customDialogText = "I see you are finally here.  You need to collect from Eritha Summiick.  I have a local contact, some one that knows where he is.",
	stopConversation = "false",
	options = {
		{"I am ready to go, give me the way point", "find_informant"},
		{"I bumped my head and forgot what I am doing...", "info_mission"},
		{"Let me do a couple of things before we go", "stuff"},
	}
}
younggun_01_npc01_convo_template:addScreen(start_quest);

start_quest_two = ConvoScreen:new {
	id = "start_quest_two",
	leftDialog = "",
	customDialogText = "You will be heading over to Nalhutta.  Talk to the Local Coordinator there, good luck.",
	stopConversation = "false",
	options = {
		{"I am ready to go, where's Darrel?", "talk_to_darrel"},
		{"Let me do a couple of things before we go", "stuff"},
	}
}
younggun_01_npc01_convo_template:addScreen(start_quest_two);

continue_quest = ConvoScreen:new {
	id = "continue_quest",
	leftDialog = "",
	customDialogText = "What do you need?",
	stopConversation = "false",
	options = {
		{"Nothing.", "bye"},
		{"Give me the way point to the iinformant again.", "find_informant"},
		{"I bumped my head and forgot what I am doing...", "info_mission"},
	}
}
younggun_01_npc01_convo_template:addScreen(continue_quest);



info_mission = ConvoScreen:new {
	id = "info_mission",
	leftDialog = "",
	customDialogText = "All set now?",
	stopConversation = "false",
	options = {
		{"Yep", "bye"},
		{"Let me do a couple of things before we go", "stuff"},
		--{"I want to reset this fantastic quest.", "reset_quest"}
	}
}
younggun_01_npc01_convo_template:addScreen(info_mission);

find_informant = ConvoScreen:new {
	id = "find_informant",
	leftDialog = "",
	customDialogText = "All set now?",
	stopConversation = "false",
	options = {
		{"Yep", "bye"},
		{"Give me the way point to the informant again.", "find_informant"},
		--{"I want to reset this fantastic quest.", "reset_quest"}
	}
}
younggun_01_npc01_convo_template:addScreen(find_informant);

find_informant_two = ConvoScreen:new {
	id = "find_informant_two",
	leftDialog = "",
	customDialogText = "All set now?",
	stopConversation = "false",
	options = {
		{"Yep", "bye"},
		{"Give me the way point to the informant again.", "find_informant_two"},
		--{"I want to reset this fantastic quest.", "reset_quest"}
	}
}
younggun_01_npc01_convo_template:addScreen(find_informant_two);

first_complete = ConvoScreen:new {   
	id = "first_complete",
	leftDialog = "",
	customDialogText = "Looks like you are done here.  Ready to go to Nalhutta?",
	stopConversation = "false",
	options = {
			{"I am not ready to leave yet.", "bye"},
			{"Yep, let's get moving to the next place.", "talk_to_darrel"},
	}
}
younggun_01_npc01_convo_template:addScreen(first_complete);

second_complete = ConvoScreen:new {   
	id = "second_complete",
	leftDialog = "",
	customDialogText = "second_complete : Looks like you are done here.  I am ready to go to Taanab.",
	stopConversation = "false",
	options = {
			{"I am not ready to leave yet.", "bye"},
			{"Yep, let's get moving to the next place.", "bye"}
	}
}
younggun_01_npc01_convo_template:addScreen(second_complete);

third_complete = ConvoScreen:new {   
	id = "third_complete",
	leftDialog = "",
	customDialogText = "first_complete : Looks like you are done here.  I am ready to go to Tatooine.",
	stopConversation = "false",
	options = {
			{"I am not ready to leave yet.", "bye"},
			{"Yep, let's get moving to the next place.", "bye"}
	}
}
younggun_01_npc01_convo_template:addScreen(third_complete);


stuff = ConvoScreen:new {   
	id = "stuff",
	leftDialog = "",
	customDialogText = "Make a waypoint so you can return here later.",
	stopConversation = "true",
	options = {
			
	}
}
younggun_01_npc01_convo_template:addScreen(stuff);
---
completed_task = ConvoScreen:new {
	id = "completed_task",
	leftDialog = "",
	customDialogText = "Looks like our business together is done.",
	stopConversation = "true",
	options = { }
}
younggun_01_npc01_convo_template:addScreen(completed_task);
---
---------------------------------------
getgoing = ConvoScreen:new {
	id = "getgoing",
	leftDialog = "",
	customDialogText = "Don't you have something to do?",
	stopConversation = "true",
	options = {
		}
}
younggun_01_npc01_convo_template:addScreen(getgoing);
------
reset_quest = ConvoScreen:new {
	id = "reset_quest",
	customDialogText = "Ok .. I will reset the quest just for you.",
	stopConversation = "true",
	options = {}
}
younggun_01_npc01_convo_template:addScreen(reset_quest);
-----------------------------------------
talk_to_darrel = ConvoScreen:new {
	id = "talk_to_darrel",
	customDialogText = "He should be around.",
	stopConversation = "true",
	options = {}
}
younggun_01_npc01_convo_template:addScreen(talk_to_darrel);

-----------------------------------------------------
bye = ConvoScreen:new {
	id = "bye",
	customDialogText = "Ok ... take care.",
	stopConversation = "true",
	options = {}
}
younggun_01_npc01_convo_template:addScreen(bye);

-----------------------
addConversationTemplate("younggun_01_npc01_convo_template", younggun_01_npc01_convo_template);
