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

arch_schem03_npc02_convo_template = ConvoTemplate:new {
	initialScreen = "",
	templateType = "Lua",
	luaClassHandler = "arch_schem03_npc02_convo_handler",
	screens = {}
}

start = ConvoScreen:new {
	id = "start",
	leftDialog = "",
	customDialogText = "Hi",
	stopConversation = "false",
	options = {
		{"I hear you are in the market for a new and interesting house.", "mission1a"},
		{"Have a good day.", "bye"}
	}
}
arch_schem03_npc02_convo_template:addScreen(start);

mission1a = ConvoScreen:new {
	id = "mission1a",
	leftDialog = "",
	customDialogText = "Let me see your portfolio.",
	stopConversation = "true",
	options = { }

}
arch_schem03_npc02_convo_template:addScreen(mission1a);
--------------------------------------------------------------------
mission1b = ConvoScreen:new {
	id = "mission1b",
	leftDialog = "",
	customDialogText = "Thanks for showing these to me.",
	stopConversation = "true",
	options = { }
}
arch_schem03_npc02_convo_template:addScreen(mission1b);
-------------------------------------------------------------------
completed = ConvoScreen:new {
	id = "completed",
	leftDialog = "",
	customDialogText = "I believe we spoke before.",
	stopConversation = "true",
	options = { }
}
arch_schem03_npc02_convo_template:addScreen(completed);
-------------------------------------------------------------------
goto_mission_giver = ConvoScreen:new {
	id = "goto_mission_giver",
	leftDialog = "",
	customDialogText = "Proceed to the Architect to claim your new Schematics.",
	stopConversation = "true",
	options = {
		}
}
arch_schem03_npc02_convo_template:addScreen(goto_mission_giver);
-----------------------------------------
getgoing = ConvoScreen:new {
	id = "getgoing",
	customDialogText = "It's a beautiful day.",
	stopConversation = "true",
	options = {}
}
arch_schem03_npc02_convo_template:addScreen(getgoing);
------------------------------------------

notactive = ConvoScreen:new {
  id = "notactive",
  leftDialog = "",
    customDialogText = "We don't have any business together.",
stopConversation = "false",
   options = {  	--{"TEST RESET", "reset"}
  }
}

arch_schem03_npc02_convo_template:addScreen(notactive);  
----------------------------------------------------
bye = ConvoScreen:new {
	id = "bye",
	customDialogText = "Ok ... take care.",
	stopConversation = "true",
	options = {}
}
arch_schem03_npc02_convo_template:addScreen(bye);
-----------------------

addConversationTemplate("arch_schem03_npc02_convo_template", arch_schem03_npc02_convo_template);

