-- Modified for DrDax's Pandorum Collection 2017-8
-------------------------------------------------------------

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

thereonstarflight_convo_template = ConvoTemplate:new {
	initialScreen = "",
	templateType = "Lua",
	luaClassHandler = "thereonstarflightConvoHandler",
	screens = {}
}

start_quest = ConvoScreen:new {
	id = "start_quest",
	leftDialog = "",
	customDialogText = "Who sent you ...",
	stopConversation = "false",
	options = {
		{"Akeser, she said you can arrange a ship while I do some work for her", "talk_to_darrel"},
		{"I bumped my head and forgot what I am doing...", "info_mission_one"},
	}
}
thereonstarflight_convo_template:addScreen(start_quest);

talk_to_darrel = ConvoScreen:new {
	id = "talk_to_darrel",
	leftDialog = "",
	customDialogText = "Your are in luck, my brother Darrel has just returned.  I will tell him we are working together, go ahead and board the ship.",
	stopConversation = "false",
	options = {
		{"Ok, tell Darrel I am in a hurry.", "bye"},
		{"How do I know I can trust you or your brother?", "trust"},
		{"Tell him to get ready, I will be back.", "bye"},
	}
}
thereonstarflight_convo_template:addScreen(talk_to_darrel);


resume_travel = ConvoScreen:new {
	id = "resume_travel",
	leftDialog = "",
	customDialogText = "My brother and I have been here waiting.  Now quit messing around and let's get to it.",
	stopConversation = "false",
	options = {
		{"I am ready.", "bye"},
		{"I just had to grab some supplies, let's go.", "bye"},  -- think about side convo for spices
	}
}
thereonstarflight_convo_template:addScreen(resume_travel);

trust = ConvoScreen:new {
	id = "trust",
	leftDialog = "",
	customDialogText = "Trust? Are you kidding me?  There is no trust, there are just credits, that's what you should trust.",
	stopConversation = "false",
	options = {
		{"Fair enough, just don't get in my way.", "bye"},
		{"OK... wait here, I'll need to do something before we go.", "bye"},
	}
}
thereonstarflight_convo_template:addScreen(trust);

---------------------------------------
getgoing = ConvoScreen:new {
	id = "getgoing",
	leftDialog = "",
	customDialogText = "Don't you have something to do?",
	stopConversation = "true",
	options = {
		}
}
thereonstarflight_convo_template:addScreen(getgoing);
-------------------------------------
not_done_yet = ConvoScreen:new {
	id = "not_done_yet",
	leftDialog = "",
	customDialogText = "Keep going, it won't take long.",
	stopConversation = "false",
	options = {
			{"I'll carry on ..", "carry_on_one"},
			{"I bumped my head and forgot what I am doing...", "info_mission_one"},
			{"Later.", "bye"},
		}
}
thereonstarflight_convo_template:addScreen(not_done_yet);
---

quest_complete = ConvoScreen:new {
	id = "quest_complete",
	leftDialog = "",
	customDialogText = "Wow that was an adventure!",
	stopConversation = "false",
	options = {
			{"It was, see ya around!", "bye"},
	}
}
thereonstarflight_convo_template:addScreen(quest_complete);
---
reset_quest = ConvoScreen:new {
	id = "reset_quest",
	customDialogText = "Ok .. I will reset the quest just for you.",
	stopConversation = "true",
	options = {}
}
thereonstarflight_convo_template:addScreen(reset_quest);

--------------------
recover_travel = ConvoScreen:new {
	id = "recover_travel",
	customDialogText = "What are you doing back here?  Check your journal for you next move.",
	stopConversation = "false",
	options = {
		{"I am ready to get back to it.", "bye"},
		{"I bumped my head and forgot what I am doing...", "info_mission_one"},
	}
}
thereonstarflight_convo_template:addScreen(recover_travel);


info_mission_one = ConvoScreen:new {
	id = "info_mission_one",
	customDialogText = "Ok are you all better now?",
	stopConversation = "false",
	options = {
		{"Ok,I got it now... Akeser sent me and said you have transportation", "talk_to_darrel"},
	}
}
thereonstarflight_convo_template:addScreen(info_mission_one);

-----------------------------------------
no_quest = ConvoScreen:new {
	id = "no_quest",
	customDialogText = "I might suggest you talk to my contact Akeser Alrai in the Lucky Lady.",
	stopConversation = "true",
	options = {}
}
thereonstarflight_convo_template:addScreen(no_quest);


-----------------------------------------
bye = ConvoScreen:new {
	id = "bye",
	customDialogText = "You know where to find me.",
	stopConversation = "true",
	options = {}
}
thereonstarflight_convo_template:addScreen(bye);

addConversationTemplate("thereonstarflight_convo_template", thereonstarflight_convo_template);
