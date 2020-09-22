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



Mobile : younggun_02_npc01_npc
Quest : younggun_02_npc01_quest


--]]

younggun_02_npc01_convo_template = ConvoTemplate:new {
	initialScreen = "",
	templateType = "Lua",
	luaClassHandler = "younggun_02_npc01_convo_handler",
	screens = {}
}

----------------------------- Start ----------------------------

start = ConvoScreen:new {
  id = "start",
  leftDialog = "",
  customDialogText = ".. <start screen> Are you ready for a dangerous mission, it pays well.",
  stopConversation = "false", 
  options = {	{"Sure, I need some excitment and of course a sizable reward", "mission1a"},
      		{"Sounds sketchy, no thanks.", "bye"},
     }
}

younggun_02_npc01_convo_template:addScreen(start);
------------------------------------------------------------
wrong_faction = ConvoScreen:new {
  id = "wrong_faction",
  leftDialog = "",
  customDialogText = ".. <wrong_faction screen> I need someone from the Rebellion to ensure the success of this assignment.  Come back when you represent the Rebellion.",
  stopConversation = "false", 
  options = {	{"The Rebellion? Never!", "bye"},
      		{"OK", "bye"},
     }
}

younggun_02_npc01_convo_template:addScreen(wrong_faction);
----------------------------------------------------------------

mission1a = ConvoScreen:new {
  id = "mission1a",
  leftDialog = "",
  customDialogText = "I need you to liberate one of our trusted smugglers from the Imperial Detention Facility.",
  stopConversation = "false", 
  options = {	
  		{"I will do it.", "mission1b"},
    		{"I don't think this is for me", "bye"},
	}
}

younggun_02_npc01_convo_template:addScreen(mission1a);
------------------------------------------------------------

mission1b = ConvoScreen:new {
  id = "mission1b",
  leftDialog = "",
  customDialogText = "Be careful and good luck, see you soon.",
  stopConversation = "true", 
  options = {	
	}
}

younggun_02_npc01_convo_template:addScreen(mission1b);
------------------------------------------------------------


about = ConvoScreen:new {
  id = "about", 
  leftDialog = "",
  customDialogText = "GCW TEXT HERE",
  stopConversation = "true", 
  options = {	
	  }
}

younggun_02_npc01_convo_template:addScreen(about);
--------------------------------------------------------------------------------

reset = ConvoScreen:new {
  id = "reset", 
  leftDialog = "",
  customDialogText = "Reset default.",
  stopConversation = "true", 
  options = {	
	  }
}

younggun_02_npc01_convo_template:addScreen(reset);
----------------------------------------------------------------------------------

inprogress = ConvoScreen:new {  
  id = "inprogress",	
  leftDialog = "",
    customDialogText = "Make sure you have spoken to all 6 Supporters, then you will have earned a break.",
stopConversation = "false",
   options = {	{"I am on my way.", "bye"},
   		{"I found them all.", "completed"},
				{"TEST RESET", "reset"},
  }
}

younggun_02_npc01_convo_template:addScreen(inprogress);
----------------------------------------------------------------------------------------------

completed = ConvoScreen:new {
  id = "completed",
  leftDialog = "",
    customDialogText = "That's great that you have found all the Supporters, thanks!",
stopConversation = "false",
   options = {  	{"TEST RESET", "reset"}
     }
}

younggun_02_npc01_convo_template:addScreen(completed);
----------------------------------------------------

notactive = ConvoScreen:new {
  id = "notactive",
  leftDialog = "",
    customDialogText = "We don't have any business together.",
stopConversation = "false",
   options = {  	{"TEST RESET", "reset"}
  }
}

younggun_02_npc01_convo_template:addScreen(notactive);  
----------------------------------------------------

bye = ConvoScreen:new {
  id = "bye",
  leftDialog = "",
    customDialogText = "Safe travels.",
stopConversation = "true",
   options = {  
  }
}

younggun_02_npc01_convo_template:addScreen(bye);

--------------------------------------------------

addConversationTemplate("younggun_02_npc01_convo_template", younggun_02_npc01_convo_template);
