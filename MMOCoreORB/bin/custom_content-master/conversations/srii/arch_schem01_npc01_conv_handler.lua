-- Modified for DrDax's Pandorum Collection 2017-8
---------------------------------------------------------------
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
--------------------------------------------------------------------
arch_schem01_npc01_convo_template = ConvoTemplate:new {
	initialScreen = "",
	templateType = "Lua",
	luaClassHandler = "arch_schem01_npc01_convo_handler",
	screens = {}
}
----------------------------------------------------------------------------------------------------
first_screen = ConvoScreen:new {
	id = "first_screen",
	leftDialog = "",
	customDialogText = "I need qualified Master Architects to be able to craft Small Windowed Houses for Tatooine and Naboo. What I need is to have the plans signed off by the Local Architect and then approved by the City Planner.  Get the plans approved and I will give you the schematics for small houses behind me so there will be another as capable as myself to craft them.  You will start with me, then work for the next Architect nearby.",
	stopConversation = "false",
	options = {
		{"OK, sounds good... I am ready to go.", "accept_mission_one"},
		{"Can you tell me what I need to do again?...", "task_one_info"},
		{"Oops I am not a Master Architect...", "exit_one"},
		--{"TEST: I want to reset this fantastic quest.", "reset_quest"}
	}
}
arch_schem01_npc01_convo_template:addScreen(first_screen);
---------------------------------------------------------
no_skill = ConvoScreen:new {
	id = "no_skill",
	leftDialog = "",
	customDialogText = "You don't have the Master Architect Credentials, come back when you do.",
	stopConversation = "true",
	options = {}
}
arch_schem01_npc01_convo_template:addScreen(no_skill);
---------------------------------------------------
accept_mission_one = ConvoScreen:new {
	id = "accept_mission_one",
	leftDialog = "",
	customDialogText = "If you need a clue where to look.  Check your Journal.",
	stopConversation = "true",
	options = {}
}
arch_schem01_npc01_convo_template:addScreen(accept_mission_one);
--------------------------------------------
task_one_info = ConvoScreen:new {
	id = "task_one_info",
	leftDialog = "",
	customDialogText = "You need to deliver the updated plans to the Local Architect first for his signature, then take the entire package to the City planner.  Look for them in this city.",
	stopConversation = "true",
	options = {}
}
arch_schem01_npc01_convo_template:addScreen(task_one_info);
------------------------------------------
lost_quest_item = ConvoScreen:new {
	id = "lost_quest_item",
	leftDialog = "",
	customDialogText = "You need to deliver the updated plans to the Local Architect first for his signature, then take the entire package to the City planner.  Look for them in this city.",
	stopConversation = "true",
	options = {}
}
arch_schem01_npc01_convo_template:addScreen(lost_quest_item);
--------------------------------------------------
task_one_in_progress = ConvoScreen:new {
	id = "task_one_in_progress",
	leftDialog = "",
	customDialogText = "You haven't tried hard enough to find them.  Keep looking.",
	stopConversation = "false",
	options = {
		{"I'll carry on looking.", "bye"},
		{"I lost the Plans.", "lost_quest_item"},
	--{"TEST: I want to reset this quest.", "reset_quest"}
	}
}
arch_schem01_npc01_convo_template:addScreen(task_one_in_progress);
------------------------------------------
lost_quest_item = ConvoScreen:new {
	id = "lost_quest_item",
	leftDialog = "",
	customDialogText = "Don't lose them again.",
	stopConversation = "true",
	options = {  
	}
}
arch_schem01_npc01_convo_template:addScreen(lost_quest_item);
------------------------------------------
getitem_failed = ConvoScreen:new {
	id = "getitem_failed",
	leftDialog = "",
	customDialogText = "Check your inventory, your's appears to be full.",
	stopConversation = "false",
	options = {  {"Try again", "deliver"}
	}
}
arch_schem01_npc01_convo_template:addScreen(getitem_failed);
-------------------------------------------
getreward_failed = ConvoScreen:new {
  id = "getreward_failed",
  leftDialog = "",
    customDialogText = "You need to make room in your inventory before you can recieve the reward or there was an error finding the reward.  Talk to me again when you are ready.",
stopConversation = "true",
   options = {  
  }
}
arch_schem01_npc01_convo_template:addScreen(getreward_failed); 
----------------------------------------------
exit_one = ConvoScreen:new {
	id = "exit_one",
	leftDialog = "",
	customDialogText = "Come back when you are ready to earn the schematics.",
	stopConversation = "true",
	options = {}
}
arch_schem01_npc01_convo_template:addScreen(exit_one);
------------------------------------------------
completed = ConvoScreen:new {
	id = "completed",
	leftDialog = "",
	customDialogText = "Thanks for finding getting the plans approved.",
	stopConversation = "false",
	options = {
			{"I can't wait to make these houses.", "bye"},
			--{"TEST: I want to reset this fantastic quest.", "reset_quest"}
	}
}
arch_schem01_npc01_convo_template:addScreen(completed);

reset_quest = ConvoScreen:new {
	id = "reset_quest",
	customDialogText = "Ok .. I will reset the quest just for you.",
	stopConversation = "true",
	options = {}
}
arch_schem01_npc01_convo_template:addScreen(reset_quest);

bye = ConvoScreen:new {
	id = "bye",
	customDialogText = "Ok ... take care.",
	stopConversation = "true",
	options = {}
}
arch_schem01_npc01_convo_template:addScreen(bye);

addConversationTemplate("arch_schem01_npc01_convo_template", arch_schem01_npc01_convo_template);

