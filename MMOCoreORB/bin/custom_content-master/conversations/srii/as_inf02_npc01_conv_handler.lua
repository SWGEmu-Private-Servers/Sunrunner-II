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
as_inf02_npc01_convo_template = ConvoTemplate:new {
	initialScreen = "",
	templateType = "Lua",
	luaClassHandler = "as_inf02_NPC01_convo_handler",
	screens = {}
}

first_screen = ConvoScreen:new {
	id = "first_screen",
	leftDialog = "",
	customDialogText = "I contracted others to make Neutral Infiltrator Armor. The key pieces of armor are ready to pick up. You need to retrive all the pieces and bring them back to me.  I will get you the schematics for that armor so there will be another as capable as myself to craft this armor.  (You will need 11 inventory spaces open to receive the reward for this quest)",
	stopConversation = "false",
	options = {
		{"OK, sounds good... I am ready to go.", "accept_mission_one"},
		{"Can you tell me what I need to do again?...", "task_one_info"},
		{"I have an appointment, I don't have the time right now...", "exit_one"},
		--{"TEST: I want to reset this fantastic quest.", "reset_quest"}
	}
}
as_inf02_npc01_convo_template:addScreen(first_screen);

no_skill = ConvoScreen:new {
	id = "no_skill",
	leftDialog = "",
	customDialogText = "You don't have the Master Armorsmith Credentials, come back when you do.",
	stopConversation = "true",
	options = {}
}
as_inf02_npc01_convo_template:addScreen(no_skill);

accept_mission_one = ConvoScreen:new {
	id = "accept_mission_one",
	leftDialog = "",
	customDialogText = "So you need a clue where to look.  Check your Journal.",
	stopConversation = "true",
	options = {}
}
as_inf02_npc01_convo_template:addScreen(accept_mission_one);

task_one_info = ConvoScreen:new {
	id = "task_one_info",
	leftDialog = "",
	customDialogText = "You need to retrive all the armor pieces and bring them back to me.  Look for my AS colleagues in the cities in your journal.",
	stopConversation = "true",
	options = {}
}
as_inf02_npc01_convo_template:addScreen(task_one_info);

task_one_in_progress = ConvoScreen:new {
	id = "task_one_in_progress",
	leftDialog = "",
	customDialogText = "You haven't tried hard enough to find them.",
	stopConversation = "false",
	options = {
		{"I'll carry on looking.", "carry_on_one"},
		--{"TEST: I want to reset this quest.", "reset_quest"}
	}
}
as_inf02_npc01_convo_template:addScreen(task_one_in_progress);

getreward_failed = ConvoScreen:new {
  id = "getreward_failed",
  leftDialog = "",
    customDialogText = "You need to make room in your inventory before you can recieve the reward or there was an error finding the reward.  Talk to me again when you are ready.",
stopConversation = "true",
   options = {  
  }
}
as_inf02_npc01_convo_template:addScreen(getreward_failed); 

exit_one = ConvoScreen:new {
	id = "exit_one",
	leftDialog = "",
	customDialogText = "Come back when you are ready to earn the schematics.",
	stopConversation = "true",
	options = {}
}
as_inf02_npc01_convo_template:addScreen(exit_one);

quest_complete = ConvoScreen:new {
	id = "quest_complete",
	leftDialog = "",
	customDialogText = "Thanks for finding all the pieces, hope you are enjoying the schematics.",
	stopConversation = "false",
	options = {
			{"I can't wait to make me some armor!", "bye"},
			--{"TEST: I want to reset this fantastic quest.", "reset_quest"}
	}
}
as_inf02_npc01_convo_template:addScreen(quest_complete);

reset_quest = ConvoScreen:new {
	id = "reset_quest",
	customDialogText = "Ok .. I will reset the quest just for you.",
	stopConversation = "true",
	options = {}
}
as_inf02_npc01_convo_template:addScreen(reset_quest);

bye = ConvoScreen:new {
	id = "bye",
	customDialogText = "Ok ... take care.",
	stopConversation = "true",
	options = {}
}
as_inf02_npc01_convo_template:addScreen(bye);

addConversationTemplate("as_inf02_npc01_convo_template", as_inf02_npc01_convo_template);
