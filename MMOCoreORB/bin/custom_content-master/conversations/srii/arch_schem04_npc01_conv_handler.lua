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
arch_schem04_npc01_convo_template = ConvoTemplate:new {
	initialScreen = "",
	templateType = "Lua",
	luaClassHandler = "arch_schem04_npc01_convo_handler",
	screens = {}
}
----------------------------- Start ----------------------------

start = ConvoScreen:new {
  id = "start",
  leftDialog = "",
  customDialogText = "You have finally reached the last part of the Architect Windowed Houses Series.  Unfortunately, my partner died in a crash and he had the plans on him.  I need you to find the crash site and retrieve the plans. You will be rewarded with the final set of the Large Generic Windowed House deeds.",
  stopConversation = "false", 
  options = {	{"Sure thing.  I will get my exploration supplies and head on out.", "activatequest"},
		{"Sounds grim and dangerous, it's not for  me", "bye"},
		{"How do I find the plans?", "about"},
    		{"Not right now, thanks.", "bye"},
    		--{"RESET to start", "reset"},
	
     }
}
arch_schem04_npc01_convo_template:addScreen(start);
------------------------------------------------------------

activatequest = ConvoScreen:new {
  id = "activatequest",
  leftDialog = "",
  customDialogText = "Locate the crash site and search for all the plan documents.  Check your Journal for as you search.",
  stopConversation = "true", 
  options = {	
	}
}
arch_schem04_npc01_convo_template:addScreen(activatequest);
------------------------------------------------------------

about = ConvoScreen:new {
  id = "about", 
  leftDialog = "",
  customDialogText = "I need someone to locate and bring the plans to me.  Find the crash site and search everything.",
  stopConversation = "false", 
  options = {	{"I am on my way.", "activatequest"},
		{"Maybe later.", "bye"},
	  }
}
arch_schem04_npc01_convo_template:addScreen(about);
--------------------------------------------------------------------------------

reset = ConvoScreen:new {
  id = "reset", 
  leftDialog = "",
  customDialogText = "Reset to defaults.",
  stopConversation = "true", 
  options = {	
	  }
}
arch_schem04_npc01_convo_template:addScreen(reset);
----------------------------------------------------------------------------------

inorder = ConvoScreen:new {  
  id = "inorder",	
  leftDialog = "",
    customDialogText = "You need to work for the Architects in order, from small to large.",
stopConversation = "true",
   options = {	{"I am on my way.", "bye"},
  }
}
arch_schem04_npc01_convo_template:addScreen(inorder);
----------------------------------------------------------------------------------------------

inprogress = ConvoScreen:new {  
  id = "inprogress",	
  leftDialog = "",
    customDialogText = "You need to find the plans.  Go to the crash site location.",
stopConversation = "false",
   options = {	{"I am on my way.", "bye"},
   {"There is nothing at the crash site, let's start  over.", "reset"},
   		--{"TEST RESET", "reset"},
   
  }
}
arch_schem04_npc01_convo_template:addScreen(inprogress);
----------------------------------------------------------------------------------------------
completed = ConvoScreen:new {
  id = "completed",
  leftDialog = "",
    customDialogText = "Thanks for finding the plans.  Be on the look out for other Architects needing your services throughout the Galaxy.",
stopConversation = "false",
   options = {  	{"You're welcome.", "bye"},
				--{"TEST RESET", "reset"},
  }
}
arch_schem04_npc01_convo_template:addScreen(completed);
----------------------------------------------------

readytoclaim = ConvoScreen:new {
  id = "readytoclaim",
  leftDialog = "",
    customDialogText = "Thanks for finding the plans.",
stopConversation = "false",
   options = {  	{"Sure, I'll take those plans now", "claimed"},
				--{"TEST RESET", "reset"},
  }
}
arch_schem04_npc01_convo_template:addScreen(readytoclaim);  
----------------------------------------------------

claimed = ConvoScreen:new {
  id = "claimed",
  leftDialog = "",
    customDialogText = "Thanks for finding the plans.",
stopConversation = "true",
   options = { 
  }
}
arch_schem04_npc01_convo_template:addScreen(claimed);
----------------------------------------------------
getreward_failed = ConvoScreen:new {
  id = "getreward_failed",
  leftDialog = "",
    customDialogText = "You need to make room in your inventory before you can recieve the reward or there was an error finding the reward.  Talk to me again when you are ready.",
stopConversation = "true",
   options = {  
  }
}
arch_schem04_npc01_convo_template:addScreen(getreward_failed);   
----------------------------------------------------

notactive = ConvoScreen:new {
  id = "notactive",
  leftDialog = "",
    customDialogText = "We don't have any business together.",
stopConversation = "false",
   options = {  	--{"TEST RESET", "reset"}
  }
}

arch_schem04_npc01_convo_template:addScreen(notactive);  
----------------------------------------------------

getgoing = ConvoScreen:new {
	id = "getgoing",
	leftDialog = "",
	customDialogText = "Don't you have something to do?",
	stopConversation = "true",
	options = {
		}
}
arch_schem04_npc01_convo_template:addScreen(getgoing);
--------------------------------------------------------------
bye = ConvoScreen:new {
  id = "bye",
  leftDialog = "",
    customDialogText = "Safe travels.",
stopConversation = "true",
   options = {  
  }
}
arch_schem04_npc01_convo_template:addScreen(bye);
------------------------------------------------------------------
deploy = ConvoScreen:new {
  id = "deploy", 
  leftDialog = "",
  customDialogText = "Deployed Test Objects.",
  stopConversation = "true", 
  options = {	  }
}
arch_schem04_npc01_convo_template:addScreen(deploy);
-- Template Footer---------------------------------------------
addConversationTemplate("arch_schem04_npc01_convo_template", arch_schem04_npc01_convo_template);
