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

akeseralrai_convo_template = ConvoTemplate:new {
	initialScreen = "",
	templateType = "Lua",
	luaClassHandler = "akeseralraiConvoHandler",
	screens = {}
}
------------------------------------------------------------------------
hello_stranger = ConvoScreen:new {
	id = "hello_stranger",
	leftDialog = "",
	customDialogText = "Hello stranger...",
	stopConversation = "false",
	options = {
		{"Maybe we can be friends.", "bye"},
		{"Stranger? How can you treat me that way, after that night....?", "bye"},
		--{"I want to reset this fantastic quest series.", "reset_quest"}
	}
}
akeseralrai_convo_template:addScreen(hello_stranger);
--------------------------------------------------------------------
start_series_1 = ConvoScreen:new {
	id = "start_series_1",
	leftDialog = "",
	customDialogText = "I hear you are looking for work...",
	stopConversation = "false",
	options = {
		{"I might be... what do you want?", "info_mission_one"},
		{"You must be mistaking me for a desperate slum rat....", "bye"},
		--{"I want to reset this fantastic quest.", "reset_quest"},
	}
}
akeseralrai_convo_template:addScreen(start_series_1);
-----
accept_series_one = ConvoScreen:new {
	id = "accept_series_one",
	leftDialog = "",
	customDialogText = "You need to collect what is owed to Nym and bring it back to me. Travel arrangements have been made for you.  Check your datapad and journal for the details.",
	stopConversation = "false",
	options = {
		{"Throw in that Pistol and you have yourself a deal", "pistol"},
		{"I'll be on my way.", "bye"},

	}
}
akeseralrai_convo_template:addScreen(accept_series_one);
-----
pistol = ConvoScreen:new {
	id = "pistol",
	leftDialog = "",
	customDialogText = "Done.. that is if you collect what is owed in full.",
	stopConversation = "false",
	options = {
		{"I'll be on my way.", "bye"},
	}
}
akeseralrai_convo_template:addScreen(pistol);
-----
mypistol = ConvoScreen:new {
	id = "mypistol",
	leftDialog = "",
	customDialogText = "What's that about a pistol?",
	stopConversation = "false",
	options = {
		{"Hey are you trying to cheat me ?!? You didn't give it to me.", "tough_luck"},
		
		
	}
}
akeseralrai_convo_template:addScreen(mypistol);
-------
-----
tough_luck = ConvoScreen:new {
	id = "tough_luck",
	leftDialog = "",
	customDialogText = "Sorry buddy that pistol wasn't part of the deal, you should have neogociated that up front... but I will let you have it for 25,000 credits.",
	stopConversation = "false",
	options = {
		{"Dammit, I want that pistol!", "buypistol"},

		{"I don't need it, so I'll be on my way.", "bye"},
	}
}
akeseralrai_convo_template:addScreen(tough_luck);


nopistol = ConvoScreen:new {
	id = "nopistol",
	leftDialog = "",
	customDialogText = "OK then, bye",
	stopConversation = "true",
	options = {}
}
akeseralrai_convo_template:addScreen(nopistol);


-------
no_skill = ConvoScreen:new {
	id = "no_skill",
	leftDialog = "",
	customDialogText = "You don't have the enough Underworld Skills that is required for the job, come back when you do.",
	stopConversation = "true",
	options = {}
}
akeseralrai_convo_template:addScreen(no_skill);
-----

task_one_info = ConvoScreen:new {
	id = "info_mission_one",
	leftDialog = "",
	customDialogText = "I have several people who owe a debt to Nym.  I will give you a cut of what is collected... Be warned, don't double-cross me and try to keep what you collect! ",
	stopConversation = "false",
	options = {
		{"Anything can be done for the right price...", "accept_series_one"},
		{"No thanks, this sounds shady and dangerous....", "bye"}
	}
}
akeseralrai_convo_template:addScreen(task_one_info);
-----

series_1_in_progress = ConvoScreen:new {
	id = "series_1_in_progress",
	leftDialog = "",
	customDialogText = "What are you doing here? You haven't tried hard enough to collect.",
	stopConversation = "false",
	options = {
		{"I'll carry on then.", "bye"},
		--{"I want to reset this quest.", "reset_quest"}
	}
}
akeseralrai_convo_template:addScreen(series_1_in_progress);
---

going_to_smug1contact = ConvoScreen:new {
	id = "going_to_smug1contact",
	leftDialog = "",
	customDialogText = "Head on over to the contact I arranged.",
	stopConversation = "true",
	options = {

		}
}
akeseralrai_convo_template:addScreen(going_to_smug1contact);

---
quest_complete = ConvoScreen:new {
	id = "quest_complete",
	leftDialog = "",
	customDialogText = "Thanks for doing the collections.  My report to Nym will guarantee that you will be the list of approved contractors.",
	stopConversation = "false",
	options = {
			{"Hey, what about that pistol?", "mypistol"},	

	}
}
akeseralrai_convo_template:addScreen(quest_complete);

---
buypistol = ConvoScreen:new {
	id = "buypistol",
	leftDialog = "",
	customDialogText = "Here you go.",
	stopConversation = "true",
	options = {
		}
}
akeseralrai_convo_template:addScreen(buypistol);

---
buypistol_failed = ConvoScreen:new {
	id = "buypistol_failed",
	leftDialog = "",
	customDialogText = "Make sure you have room in your inventory.",
	stopConversation = "false",
	options = {
		{"I do now.", "buypistol"},
		}
}
akeseralrai_convo_template:addScreen(buypistol_failed);
---
getpistol_failed = ConvoScreen:new {
	id = "getpistol_failed",
	leftDialog = "",
	customDialogText = "Make sure you have room in your inventory",
	stopConversation = "false",
	options = {
		{"I do now.", "mypistol"},
		}
}
akeseralrai_convo_template:addScreen(getpistol_failed);

---
reset_quest = ConvoScreen:new {
	id = "reset_quest",
	customDialogText = "Ok .. I will reset the quest just for you.",
	stopConversation = "true",
	options = {}
}
akeseralrai_convo_template:addScreen(reset_quest);

--------------------
no_skill = ConvoScreen:new {
	id = "no_skill",
	leftDialog = "",
	customDialogText = "Sorry, we are only looking for folks with the right level of UnderWorld connections.",
	stopConversation = "true",
	options = {}
}
akeseralrai_convo_template:addScreen(no_skill);
---
--------------------
next_quest2 = ConvoScreen:new {
	id = "next_quest2",
	leftDialog = "",
	customDialogText = "If you are looking for more work, check back soon. ",
	stopConversation = "false",
	options = {
		--{"I want to reset this fantastic quest series.", "reset_quest"},
		{"The next quests aren't ready, so I will come back later.", "bye"}
	}
}
akeseralrai_convo_template:addScreen(next_quest2);
-------------------------------------------------------------------
test_quest = ConvoScreen:new {
	id = "test_quest",
	leftDialog = "",
	customDialogText = "I hear you are looking for work...",
	stopConversation = "false",
	options = {
		{"Anything can be done for the right price...", "accept_series_one"},
		{"I might be... what do you want?", "info_mission_one"},
		{"You must be mistaking me for a desperate slum rat....", "bye"},
		--{"I want to reset this fantastic quest.", "reset_quest"},
	}
}
akeseralrai_convo_template:addScreen(test_quest);
-----------------------------------------------------------------
---
bye = ConvoScreen:new {
	id = "bye",
	customDialogText = "Ok ... take care.",
	stopConversation = "true",
	options = {}
}
akeseralrai_convo_template:addScreen(bye);

addConversationTemplate("akeseralrai_convo_template", akeseralrai_convo_template);
