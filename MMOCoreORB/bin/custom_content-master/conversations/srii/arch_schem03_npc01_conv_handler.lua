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
arch_schem03_npc01_convo_template = ConvoTemplate:new {
	initialScreen = "",
	templateType = "Lua",
	luaClassHandler = "arch_schem03_npc01_convo_handler",
	screens = {}
}
----------------------------- Start ----------------------------

start = ConvoScreen:new {
  id = "start",
  leftDialog = "",
  customDialogText = "Hi there, are you interested in obtaining these Medium Windowed Houses?  Find Potential House Buyers and bring me their information and I'll give you these schematics.",
  stopConversation = "false", 
  options = {	{"I am interested in the schematics.", "mission1a"},
      		{"No thanks, I am not interested.", "bye"},
		
     }
}

arch_schem03_npc01_convo_template:addScreen(start);
------------------------------------------------------------
deploy = ConvoScreen:new {
  id = "deploy",
  leftDialog = "",
  customDialogText = ".. <new npcs deployed>",
  stopConversation = "true", 
  options = {
     }
}

arch_schem03_npc01_convo_template:addScreen(deploy);
----------------------------------------------------------------

mission1a = ConvoScreen:new {
  id = "mission1a",
  leftDialog = "",
  customDialogText = "Look in the city for the Potential House Buyers.",
  stopConversation = "false", 
  options = {	
  		{"I will do it.", "mission1b"},
    		{"I don't think this is for me", "bye"},
	}
}

arch_schem03_npc01_convo_template:addScreen(mission1a);
------------------------------------------------------------

mission1b = ConvoScreen:new {
  id = "mission1b",
  leftDialog = "",
  customDialogText = "Have fun and good luck.",
  stopConversation = "true", 
  options = {	
	}
}

arch_schem03_npc01_convo_template:addScreen(mission1b);
------------------------------------------------------------

about = ConvoScreen:new {
  id = "about", 
  leftDialog = "",
  customDialogText = "TEXT HERE",
  stopConversation = "true", 
  options = {	
	  }
}

arch_schem03_npc01_convo_template:addScreen(about);
--------------------------------------------------------------------------------

reset = ConvoScreen:new {
  id = "reset", 
  leftDialog = "",
  customDialogText = "Reset default.",
  stopConversation = "true", 
  options = {	
	  }
}

arch_schem03_npc01_convo_template:addScreen(reset);
----------------------------------------------------------------------------------
inorder = ConvoScreen:new {  
  id = "inorder",	
  leftDialog = "",
    customDialogText = "You need to work for the Architects in order, from small to large.",
stopConversation = "true",
   options = {	{"I am on my way.", "bye"},
  }
}
arch_schem03_npc01_convo_template:addScreen(inorder);
----------------------------------------------------------------------------------------------
inprogress = ConvoScreen:new {  
  id = "inprogress",	
  leftDialog = "",
    customDialogText = "Make sure you have spoken to all the Potential House Buyers, then you will have earned the schematics.",

stopConversation = "true",
   options = {

   	  }
}

arch_schem03_npc01_convo_template:addScreen(inprogress);
----------------------------------------------------------------------------------------------

claim = ConvoScreen:new {
  id = "claim",
  leftDialog = "",
    customDialogText = "That's great that you have found Potential House Buyers, thanks!",
stopConversation = "false",
   options = {  	{"Yes, I am ready to claim my schematics,", "claim_schems"}
     }
}

arch_schem03_npc01_convo_template:addScreen(claim);
----------------------------------------------------

claim_schems = ConvoScreen:new {
  id = "claim_schems",
  leftDialog = "",
    customDialogText = "Here you go, I hope you enjoy building these.",
stopConversation = "true",
   options = {       }
}

arch_schem03_npc01_convo_template:addScreen(claim_schems);
----------------------------------------------------
completed = ConvoScreen:new {
  id = "completed",
  leftDialog = "",
    customDialogText = "Glad you are enjoying building those houses.",
stopConversation = "false",
   options = {  	{"TEST RESET", "reset"}
     }
}

arch_schem03_npc01_convo_template:addScreen(completed);
----------------------------------------------------

notactive = ConvoScreen:new {
  id = "notactive",
  leftDialog = "",
    customDialogText = "We don't have any business together.",
stopConversation = "false",
   options = {  	--{"TEST RESET", "reset"}
  }
}

arch_schem03_npc01_convo_template:addScreen(notactive);  
----------------------------------------------------
getreward_failed = ConvoScreen:new {
  id = "getreward_failed",
  leftDialog = "",
    customDialogText = "You need to make room in your inventory before you can recieve the schematics or there was an error finding them.  Talk to me again when you are ready.",
stopConversation = "true",
   options = {  
  }
}
arch_schem03_npc01_convo_template:addScreen(getreward_failed); 
---------------------------------------------------

bye = ConvoScreen:new {
  id = "bye",
  leftDialog = "",
    customDialogText = "Safe travels.",
stopConversation = "true",
   options = {  
  }
}

arch_schem03_npc01_convo_template:addScreen(bye);

-- Template Footer---------------------------------------------
addConversationTemplate("arch_schem03_npc01_convo_template", arch_schem03_npc01_convo_template);

