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

darrelstarflight_convo_template = ConvoTemplate:new {
	initialScreen = "",
	templateType = "Lua",
	luaClassHandler = "darrelstarflightConvoHandler",
	screens = {}
}
-----------------------------------------------------------------------------
start_quest = ConvoScreen:new {
	id = "start_quest",
	leftDialog = "",
	customDialogText = "So my brother sent you eh? If you want to get there fast and to the right people quickly, give me a cut of the deal and I will make that happen.",
	stopConversation = "false",
	options = {
		{"What do you mean, your cut?", "darrels_cut"},
		{"Let's talk about it later, I am sure Akeser would want to hear about it.", "no_darrels_deal"},
		--{"I want to reset this fantastic quest.", "reset_quest"}
	}
}
darrelstarflight_convo_template:addScreen(start_quest);
--------------------------------------------------------------------------------

darrels_cut = ConvoScreen:new {
	id = "darrels_cut",
	leftDialog = "",
	customDialogText = "Tell ya what I will do this and help you find who ya need quickly for 20% of the take... ",
	stopConversation = "false",
	options = {

		{"I'll give you 10% if you help do this quickly.", "darrels_cut10"},

		{"You'll have to talk your brother for your cut.", "no_darrels_deal"},
		--{"I want to reset this fantastic quest.", "reset_quest"}
	}
}
darrelstarflight_convo_template:addScreen(darrels_cut);

-------------------------------------------------------------

darrels_cut10 = ConvoScreen:new {
	id = "darrels_cut10",
	customDialogText = "Good enough. Sit back and get ready.",
	stopConversation = "false",
	options = {
		{"Let's get to it.", "tatooine_to_space"},
		{"Ya what a deal, now get me to where I need to be.", "tatooine_to_space"},
		--{"I want to reset this fantastic quest.", "reset_quest"}
	}
	}
darrelstarflight_convo_template:addScreen(darrels_cut10);

--- -------------------------------------------------------

no_darrels_deal = ConvoScreen:new {
	id = "no_darrels_deal",
	customDialogText = "This isn't right, you are lucky I am going to to that sector.",
	stopConversation = "false",
	options = { 
		{"Talk to Aksere and your brother when you get back.  Let's get to it.", "tatooine_to_space"},
		{ "Keep whining and I'll tell Aksere you tried to shake me down if you don't get me to where I need to be.", "tatooine_to_space"}
		
	}
	}
darrelstarflight_convo_template:addScreen(no_darrels_deal);

--------------------------------------------------------------------------
first_complete = ConvoScreen:new {   
	id = "first_complete",
	leftDialog = "",
	customDialogText = "Looks like you are done here.  I am ready to go to Nalhutta.",
	stopConversation = "false",
	options = {
			{"I am not ready to leave yet.", "bye"},
			{"Yep, let's get moving to the next place.", "ordmantell_to_space"}
	}
}
darrelstarflight_convo_template:addScreen(first_complete);

--- completed Nalhutta mission -----------------------------------
second_complete = ConvoScreen:new {   
	id = "second_complete",
	leftDialog = "",
	customDialogText = "You're back, surprising as I know who you met with.  You will find Tanab a bit more civilized.",
	stopConversation = "false",
	options = {
		{"Sitting around are you? Let's go!", "nalhutta_to_space"},
		{"One more stop ...Taanab.", "nalhutta_to_space"},
		{"I am not ready to leave yet.", "bye"}
	}
}
darrelstarflight_convo_template:addScreen(second_complete);

--- completed Taanab mission -----------------------------------
third_complete = ConvoScreen:new {   
	id = "third_complete",
	leftDialog = "",
	customDialogText = "So I assume you are ready to head back to Tatooine?",
	stopConversation = "false",
	options = {
			{"I am not ready to leave yet.", "bye"},
			{"Yep, I am ready, let's go!", "taanab_to_space"}
	}
}
darrelstarflight_convo_template:addScreen(third_complete);

----------------------------------------------------------------------------------------------

tatooine_to_space = ConvoScreen:new {
	id = "tatooine_to_space",
	leftDialog = "",
	customDialogText = "Here we go.",
	stopConversation = "true",
	options = {
		}
}
darrelstarflight_convo_template:addScreen(tatooine_to_space);

------------------------------------------------------------------
ordmantell_to_space = ConvoScreen:new {
	id = "ordmantell_to_space",
	leftDialog = "",
	customDialogText = "Here we go.",
	stopConversation = "true",
	options = {
	}
}
darrelstarflight_convo_template:addScreen(ordmantell_to_space);

----------------------------------------------------------------------

nalhutta_to_space = ConvoScreen:new {
	id = "nalhutta_to_space",
	leftDialog = "",
	customDialogText = "Here we go.",
	stopConversation = "true",
	options = {
		}
}
darrelstarflight_convo_template:addScreen(nalhutta_to_space);

----------------------------------------------------------------------

taanab_to_space = ConvoScreen:new {
	id = "taanab_to_space",
	leftDialog = "",
	customDialogText = "Glad to be heading back.",
	stopConversation = "true",
	options = {
			}
}
darrelstarflight_convo_template:addScreen(taanab_to_space);

----------------------------------------------------------------------------

info_mission = ConvoScreen:new {
	id = "info_mission",
	leftDialog = "",
	customDialogText = "Check you journal for the next steps...",
	stopConversation = "true",
	options = {
		}
}
darrelstarflight_convo_template:addScreen(info_mission);


-----------------------------------------

getgoing = ConvoScreen:new {
	id = "getgoing",
	customDialogText = "Don't you have somewhere to be?.",
	stopConversation = "true",
	options = {}
}
darrelstarflight_convo_template:addScreen(getgoing);
-----------------------------------------

bye = ConvoScreen:new {
	id = "bye",
	customDialogText = "Ok ... take care.",
	stopConversation = "true",
	options = {}
}
darrelstarflight_convo_template:addScreen(bye);

-----------------------

completed_task = ConvoScreen:new {
	id = "completed_task",
	leftDialog = "",
	customDialogText = "That was fun.",
	stopConversation = "false",
	options = {
			{"It was.", "bye"},
	}
}
darrelstarflight_convo_template:addScreen(completed_task);

addConversationTemplate("darrelstarflight_convo_template", darrelstarflight_convo_template);
