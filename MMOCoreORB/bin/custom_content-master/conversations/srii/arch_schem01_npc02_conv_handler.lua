-- Modified for DrDax's Pandorum Collection 2017-8
-- Credit to MTG & Team -- http://www.modthegalaxy.com
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
--the Free Software Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA  --]]
---------------------------------------------------------------

arch_schem01_npc02_convo_template = ConvoTemplate:new {
	initialScreen = "",
	templateType = "Lua",
	luaClassHandler = "arch_schem01_npc02_convo_handler",
	screens = {}
}

start = ConvoScreen:new {
	id = "start",
	leftDialog = "",
	customDialogText = "What can I do for you?",
	stopConversation = "false",
	options = {
		{"I need you to sign-off on these plans.", "mission1a"},
		{"Wrong place, wrong time, bye.", "bye"}
	}
}
arch_schem01_npc02_convo_template:addScreen(start);

mission1a = ConvoScreen:new {
	id = "mission1a",
	leftDialog = "",
	customDialogText = "Let me see the plans. OK, they look fine, I am signing off on these.",
	stopConversation = "false",
	options = {
		{"Thanks, I will go now to the City Planner.", "mission1b"},
		{"This seems wrong, find someone else to do this.", "bye"}
	}
}
arch_schem01_npc02_convo_template:addScreen(mission1a);

mission1b = ConvoScreen:new {
	id = "mission1b",
	leftDialog = "",
	customDialogText = "Plans signed, off you go.",
	stopConversation = "true",
	options = {
		}
}
arch_schem01_npc02_convo_template:addScreen(mission1b);

-------------------------------------------------------------------
no_quest_item = ConvoScreen:new {
	id = "no_quest_item",
	leftDialog = "",
	customDialogText = "You don't have the Plans given to you.",
	stopConversation = "true",
	options = {  
	}
}
arch_schem01_npc02_convo_template:addScreen(no_quest_item);
--------------------------------------------------------------------
completed = ConvoScreen:new {
	id = "completed",
	leftDialog = "",
	customDialogText = "I believe our business is done.",
	stopConversation = "true",
	options = { }
}
arch_schem01_npc02_convo_template:addScreen(completed);
-------------------------------------------------------------------
getgoing = ConvoScreen:new {
	id = "getgoing",
	leftDialog = "",
	customDialogText = "Don't you have something to do?",
	stopConversation = "true",
	options = {
		}
}
arch_schem01_npc02_convo_template:addScreen(getgoing);
-----------------------------------------
bye = ConvoScreen:new {
	id = "bye",
	customDialogText = "Ok ... take care.",
	stopConversation = "true",
	options = {}
}
arch_schem01_npc02_convo_template:addScreen(bye);
-----------------------

addConversationTemplate("arch_schem01_npc02_convo_template", arch_schem01_npc02_convo_template);
