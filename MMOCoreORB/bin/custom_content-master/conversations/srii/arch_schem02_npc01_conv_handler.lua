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

-- General Section ==============
-- used for examples
-- mobile :SRii_GTour_01_npc01
-- screenplay: SRii_GTour_01
--]]
----------------------------------------------
arch_schem02_npc01_convo_template = ConvoTemplate:new {
	initialScreen = "",
	templateType = "Lua",
	luaClassHandler = "arch_schem02_npc01_convo_handler",
	screens = {}
}
----------------------------- Start ----------------------------

start = ConvoScreen:new {
  id = "start",
  leftDialog = "",
  customDialogText = "Welcome fellow Architect!  I need someone to find the missing crates that hve shipped to the wrong starports.  Find them and ensure they will be shipped to me.  Can you do that?  You will be rewarded with two Small Generic Windowed House deeds.",
  stopConversation = "false", 
  options = {	{"I am ready, let's go!", "activatequest"},
		{"Can you tell me what this is about?", "about"},
    		{"Not right now, thanks.", "bye"},
	
     }
}
arch_schem02_npc01_convo_template:addScreen(start);
------------------------------------------------------------

activatequest = ConvoScreen:new {
  id = "activatequest",
  leftDialog = "",
  customDialogText = "Remember to look in various starports.  Check your Journal for the locations.",
  stopConversation = "true", 
  options = {	
	}
}
arch_schem02_npc01_convo_template:addScreen(activatequest);
------------------------------------------------------------

about = ConvoScreen:new {
  id = "about", 
  leftDialog = "",
  customDialogText = "I need someone to find the missing crates that hve shipped to the wrong starports.  Find them and ensure they will be shipped to me.",
  stopConversation = "false", 
  options = {	{"I am on my way.", "activatequest"},
		{"I don't have a Journal Entry and have not started the Quest", "activatequest"},			
		{"Maybe later.", "bye"},
	--{"Test: Reset progress to start", "reset"},
	  }
}
arch_schem02_npc01_convo_template:addScreen(about);
--------------------------------------------------------------------------------

reset = ConvoScreen:new {
  id = "reset", 
  leftDialog = "",
  customDialogText = "Reset default.",
  stopConversation = "false", 
  options = {	{"Done testing", "bye"},
			{"go to About", "about"},			
			{"Test: Reset progress to start", "reset"},
	  }
}
arch_schem02_npc01_convo_template:addScreen(reset);
----------------------------------------------------------------------------------
inorder = ConvoScreen:new {  
  id = "inorder",	
  leftDialog = "",
    customDialogText = "You need to work for the Architects in order, from small to large.",
stopConversation = "true",
   options = {	{"I am on my way.", "bye"},
  }
}
arch_schem02_npc01_convo_template:addScreen(inorder);
----------------------------------------------------------------------------------------------
inprogress = ConvoScreen:new {  
  id = "inprogress",	
  leftDialog = "",
    customDialogText = "You need to find the rest of the crates.  Check your Journal for the next location.",
stopConversation = "false",
   options = {	{"I am on my way.", "bye"},
			--	{"TEST RESET", "reset"},
  }
}
arch_schem02_npc01_convo_template:addScreen(inprogress);
----------------------------------------------------------------------------------------------

completed = ConvoScreen:new {
  id = "completed",
  leftDialog = "",
    customDialogText = "Thanks for ensuring the crates will be shipped to me.",
stopConversation = "false",
   options = {  	{"You're welcome.", "bye"},
			--{"TEST RESET", "reset"},
  }
}
arch_schem02_npc01_convo_template:addScreen(completed);
----------------------------------------------------

readytoclaim = ConvoScreen:new {
  id = "readytoclaim",
  leftDialog = "",
    customDialogText = "Thanks for ensuring the crates will be shipped to me, hope you are the new windowed house schematics.  Be on the look out for other Architects needing your services throughout the Galaxy.",
stopConversation = "false",
   options = {  	{"I am on my way.", "bye"},
			--{"TEST RESET", "reset"},
  }
}
arch_schem02_npc01_convo_template:addScreen(readytoclaim);  
----------------------------------------------------

getreward_failed = ConvoScreen:new {
  id = "getreward_failed",
  leftDialog = "",
    customDialogText = "You need to make room in your inventory before you can recieve the reward or there was an error finding the reward.  Talk to me again when you are ready.",
stopConversation = "true",
   options = {  
  }
}
arch_schem02_npc01_convo_template:addScreen(getreward_failed);   
----------------------------------------------------
notactive = ConvoScreen:new {
  id = "notactive",
  leftDialog = "",
    customDialogText = "We don't have any business together.",
stopConversation = "false",
   options = {  	--{"TEST RESET", "reset"}
  }
}

arch_schem02_npc01_convo_template:addScreen(notactive);  
----------------------------------------------------
bye = ConvoScreen:new {
  id = "bye",
  leftDialog = "",
    customDialogText = "Safe travels.",
stopConversation = "true",
   options = {  
  }
}
arch_schem02_npc01_convo_template:addScreen(bye);

-- Template Footer---------------------------------------------
addConversationTemplate("arch_schem02_npc01_convo_template", arch_schem02_npc01_convo_template);

