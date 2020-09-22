-- Modified for DrDax's Pandorum Collection 2017-8
-- Credit to MTG & Team -- http://www.modthegalaxy.com
---------------------------------------------------------------

younggun_01_npc05_convo_template = ConvoTemplate:new {
	initialScreen = "",
	templateType = "Lua",
	luaClassHandler = "younggun_01_npc05_ConvoHandler", -- Nym Coordinator --
	screens = {}
}


start_quest = ConvoScreen:new {
	id = "start_quest",
	leftDialog = "",
	customDialogText = "You have a difficult one this time.  Alkes Spiraldown is known to run and has a ship... so far he hasn't been caught.",
	stopConversation = "false",
	options = {
		{"I am ready to go, give me the way point", "find_pilot"},
		{"I bumped my head and forgot what I am doing...", "info_mission"},
		{"Let me do a couple of things before we go", "stuff"},
	}
}
younggun_01_npc05_convo_template:addScreen(start_quest);

start_second = ConvoScreen:new {
	id = "start_second",
	leftDialog = "",
	customDialogText = "Let's get you setup for this next one.  Talk to the Research Assistant to find the location of the Hutt Medical Lab and bring back any research you can find for Nym.",
	stopConversation = "false",
	options = {    {"I can do that.", "find_assistant"},
		{"Let me do a couple of things before we go", "stuff"},
	}
}
younggun_01_npc05_convo_template:addScreen(start_second);

brought_ship = ConvoScreen:new {
	id = "brought_ship",
	leftDialog = "",
	customDialogText = "Fantastic!  You brought his ship back.  Nym will be pleased.",
	stopConversation = "false",
	options = {
		{"Here are the keys", "ship_reward"},
	}
}
younggun_01_npc05_convo_template:addScreen(brought_ship);

ship_reward = ConvoScreen:new {
	id = "ship_reward",
	leftDialog = "",
	customDialogText = "You will find a reward in your inventory.",
	stopConversation = "true",
	options = {
		}
}
younggun_01_npc05_convo_template:addScreen(ship_reward);

continue_quest = ConvoScreen:new {
	id = "continue_quest",
	leftDialog = "",
	customDialogText = "What do you need?",
	stopConversation = "false",
	options = {
		{"Give me the way point again.", "find_pilot"},
		{"I bumped my head and forgot what I am doing...", "info_mission"},
	}
}
younggun_01_npc05_convo_template:addScreen(continue_quest);


continue_quest_two = ConvoScreen:new {
	id = "continue_quest_two",
	leftDialog = "",
	customDialogText = "What do you need?",
	stopConversation = "false",
	options = {

		{"Give me the way point to the informant again.", "find_asistant"},
		{"I bumped my head and forgot what I am doing...", "info_mission"},
	}
}
younggun_01_npc05_convo_template:addScreen(continue_quest_two);

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
younggun_01_npc05_convo_template:addScreen(info_mission);

find_pilot = ConvoScreen:new {
	id = "find_pilot",
	leftDialog = "",

	customDialogText = "All set now?",
	stopConversation = "false",
	options = {
		{"Yep", "bye"},
		{"Give me the way point to the pilot again.", "find_pilot"},

	}
}
younggun_01_npc05_convo_template:addScreen(find_pilot);

find_assistant = ConvoScreen:new {
	id = "find_assistant",
	leftDialog = "",
	customDialogText = "All set now?",
	stopConversation = "false",
	options = {
		{"Yep", "bye"},
		{"Give me the way point to the informant again.", "find_assistant"},
	}
}
younggun_01_npc05_convo_template:addScreen(find_assistant);

bye = ConvoScreen:new {
	id = "bye",
	leftDialog = "",
	customDialogText = "I'll be right here.",
	stopConversation = "true",
	options = {
		
	}
}
younggun_01_npc05_convo_template:addScreen(bye);

--[[
second_complete = ConvoScreen:new {   
	id = "second_complete",
	leftDialog = "",
	customDialogText = "second_complete : Looks like you are done here.  Get ready to go to Taanab.",
	stopConversation = "false",
	options = {
			{"I am not ready to leave yet.", "bye"},
			{"Yep, let's get moving to the next place.", "bye"}
	}
}
younggun_01_npc05_convo_template:addScreen(second_complete);
--]]

stuff = ConvoScreen:new {   
	id = "stuff",
	leftDialog = "",
	customDialogText = "Make a waypoint so you can return here later.",
	stopConversation = "true",
	options = {
			
	}
}
younggun_01_npc05_convo_template:addScreen(stuff);

---
---------------------------------------


----------------------------------------------------
talk_to_darrel = ConvoScreen:new {
	id = "talk_to_darrel",
	customDialogText = "He should be around.",
	stopConversation = "true",
	options = {}
}
younggun_01_npc05_convo_template:addScreen(talk_to_darrel);

-----------------------------------------------------
------
reset_quest = ConvoScreen:new {
	id = "reset_quest",
	customDialogText = "Ok .. I will reset the quest just for you.",
	stopConversation = "true",
	options = {}
}
younggun_01_npc05_convo_template:addScreen(reset_quest);
-----------------------------------------
setup_quest = ConvoScreen:new {
	id = "setup_quest",

	customDialogText = "Ok .. set to test from this point I forward .",

	stopConversation = "true",
	options = {}
}
younggun_01_npc05_convo_template:addScreen(setup_quest);


getgoing = ConvoScreen:new {
	id = "getgoing",
	leftDialog = "",
	customDialogText = "Don't you have something to do?",

	stopConversation = "false",
	options = { 		--{"Reset quests for this planet", "reset_quest"},
		--{"Setup to G completed quests for this planet", "setup_quest"},
		}
}
younggun_01_npc05_convo_template:addScreen(getgoing);


start_quest_three = ConvoScreen:new {   
	id = "start_quest_three",
	leftDialog = "",
	customDialogText = "You should be on your way to Taanab.",
	stopConversation = "false",
	options = {   {"Hmmm..where is my ride?", "talk_to_darrel"},

		--{"Reset quests for this planet", "reset_quest"},
		--{"Setup to J completed quests for this planet", "setup_quest"},

			
	}
}
younggun_01_npc05_convo_template:addScreen(start_quest_three);
-------------------------------------------------------------------------


-----------------------
addConversationTemplate("younggun_01_npc05_convo_template", younggun_01_npc05_convo_template);

