-- Modified for DrDax's Pandorum Collection 2017-8
--[[
--This program is free software; you can redistribute 
--it and/or modify it under the terms of the GNU Lesser 
--General Public License as published by the Free Software
--Foundation; either version 2 of the License, 
--or (at your option) any later version.

--This program is distributed in the hope that it will be useful, 
--but WITHOUT ANY WARRANTY; without even the implied warranty of 
--MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. 
--See the GNU Lesser General Public License for
--more details.

--You should have received a copy of the GNU Lesser General 
--Public License along with this program; if not, write to
--the Free Software Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA

--]]
---------------------------------------------------------------

younggun_02_npc04_convo_template = ConvoTemplate:new {
	initialScreen = "",
	templateType = "Lua",
	luaClassHandler = "younggun_02_npc04_convo_handler",
	screens = {}
}
--------------------------------------------------------------
start = ConvoScreen:new {
	id = "start",
	leftDialog = "",
	customDialogText = "start",
	stopConversation = "false",
	options = {
		{"soro_spawn", "soro_spawn"},
		{"soro_board", "soro_board"},
		{"soro_space", "soro_space"},
		{"soro_land", "soro_land"},
		{"I want to reset this fantastic quest.", "reset_quest"}
	}
}
younggun_02_npc04_convo_template:addScreen(start);
--------------------------------------------------------------------------------------------

testmenu = ConvoScreen:new {
	id = "testmenu",
	customDialogText = "testmenu.",
	stopConversation = "false",
	options = {
		{"soro_spawn", "soro_spawn"},
		{"soro_board", "soro_board"},
		{"soro_boardprvt", "soro_boardprvt"},
		{"soro_space", "soro_space"},
		{"soro_land", "soro_land"},
		{"I want to reset this fantastic quest.", "reset_quest"}
	}
}
younggun_02_npc04_convo_template:addScreen(testmenu);

quest_complete = ConvoScreen:new {
	id = "completedTask",
	leftDialog = "",
	customDialogText = "Thanks for testing, hope you are enjoying the fun.",
	stopConversation = "false",
	options = {
			{"I can't wait to test more!", "bye"},
	}
}
younggun_02_npc04_convo_template:addScreen(quest_complete);

-----------------------------------------
reset_quest = ConvoScreen:new {
	id = "reset_quest",
	customDialogText = "Ok .. I will reset the quest just for you.",
	stopConversation = "true",
	options = { 
		}
}
younggun_02_npc04_convo_template:addScreen(reset_quest);

-------------------------------------------------------------------------
soro_spawn = ConvoScreen:new {
	id = "soro_spawn",
	leftDialog = "",
	customDialogText = "soro_spawn ...",
	stopConversation = "true",
	options = {
		}
}
younggun_02_npc04_convo_template:addScreen(soro_spawn);
-------------------------------------------------------------------------
soro_board = ConvoScreen:new {
	id = "soro_board",
	leftDialog = "",
	customDialogText = "soro_board ...",
	stopConversation = "true",
	options = {
		
		}
}
younggun_02_npc04_convo_template:addScreen(soro_board);

-------------------------------------------------------------------------
soro_boardprvt = ConvoScreen:new {
	id = "soro_boardprvt",
	leftDialog = "",
	customDialogText = "soro_boardprvt ...",
	stopConversation = "true",
	options = {
	
	}
}
younggun_02_npc04_convo_template:addScreen(soro_boardprvt);

------------------------------------------
soro_space = ConvoScreen:new {
	id = "soro_space",
	customDialogText = "soro_space",
	stopConversation = "true",
	options = {
		
		}
}
younggun_02_npc04_convo_template:addScreen(soro_space);

--------------------------------------------------------------
soro_land = ConvoScreen:new {
	id = "soro_land",
	customDialogText = "soro_land",
	stopConversation = "true",
	options = {
	
	}
}
younggun_02_npc04_convo_template:addScreen(soro_land);

---------------------------------------------------------------------------

addConversationTemplate("younggun_02_npc04_convo_template", younggun_02_npc04_convo_template);
