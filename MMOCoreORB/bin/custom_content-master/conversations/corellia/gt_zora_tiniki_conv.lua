-- Modified for DrDax's Pandorum Collection 2017-8
-- Credit to MTG & Team -- http://www.modthegalaxy.com

-- General Section ==============
-- used for examples
-- mobile :SRii_GTour_01_npc01
-- screenplay: SRii_GTour_01
----------------------------------------------
SRii_GTour01_convo_template = ConvoTemplate:new {
	initialScreen = "",
	templateType = "Lua",
	luaClassHandler = "SRii_GTour_01_convo_handler",
	screens = {}
}
----------------------------- Start ----------------------------

start = ConvoScreen:new {
  id = "start",
  leftDialog = "",
  customDialogText = "Welcome traveller.  Ready to explore the galaxy?  I need someone to deliver these updates to various starports.  Find the Kiosks, like the one next to me, and select it to update.  Can you do that for me?  You will be rewarded with a copy of this fabulous poster.",
  stopConversation = "false", 
  options = {	{"I am ready, let's go!", "activatequest"},
		{"Can you tell me what this is about?", "about"},
    		{"Not right now, thanks.", "bye"},
	
     }
}
SRii_GTour01_convo_template:addScreen(start);
------------------------------------------------------------

activatequest = ConvoScreen:new {
  id = "activatequest",
  leftDialog = "",
  customDialogText = "You are all set to deliver these updates to the Travel Kiosks in various starports.  Check your Journal for the next planet.",
  stopConversation = "true", 
  options = {	
	}
}
SRii_GTour01_convo_template:addScreen(activatequest);
------------------------------------------------------------

about = ConvoScreen:new {
  id = "about", 
  leftDialog = "",
  customDialogText = "I need someone to deliver these updates to the Kiosk locations in various starports.  I will reward you for your efforts with this handsom poster!",
  stopConversation = "false", 
  options = {	{"I am on my way.", "activatequest"},
		{"I don't have a Journal Entry and have not started the Quest", "activatequest"},			
		{"Maybe later.", "bye"},
		{"Test: Reset progress to start", "reset"},
	  }
}
SRii_GTour01_convo_template:addScreen(about);
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
SRii_GTour01_convo_template:addScreen(reset);
----------------------------------------------------------------------------------

inprogress = ConvoScreen:new {  
  id = "inprogress",	
  leftDialog = "",
    customDialogText = "You need to deliver the rest of the updates.  Check your Journal for the next location.",
stopConversation = "false",
   options = {	{"I am on my way.", "bye"},
				{"TEST RESET", "reset"},
  }
}
SRii_GTour01_convo_template:addScreen(inprogress);
----------------------------------------------------------------------------------------------

completed = ConvoScreen:new {
  id = "completed",
  leftDialog = "",
    customDialogText = "Thanks for delivering the updates, hope you are enjoying the travel poster.  Be on the look out for other Travel Agents needing your services throughout the Galaxy.",
stopConversation = "false",
   options = {  	{"I am on my way.", "bye"},
				{"TEST RESET", "reset"},
  }
}
SRii_GTour01_convo_template:addScreen(completed);
----------------------------------------------------

readytoclaim = ConvoScreen:new {
  id = "readytoclaim",
  leftDialog = "",
    customDialogText = "Thanks for delivering the updates, hope you are enjoying the travel poster.  Be on the look out for other Travel Agents needing your services throughout the Galaxy.",
stopConversation = "false",
   options = {  	{"I am on my way.", "bye"},
				{"TEST RESET", "reset"},
  }
}
SRii_GTour01_convo_template:addScreen(readytoclaim);  
----------------------------------------------------

getreward_failed = ConvoScreen:new {
  id = "getreward_failed",
  leftDialog = "",
    customDialogText = "You need to make room in your inventory before you can recieve the reward or there was an error finding the reward.  Talk to me again when you are ready.",
stopConversation = "true",
   options = {  
  }
}
SRii_GTour01_convo_template:addScreen(getreward_failed);   
----------------------------------------------------

bye = ConvoScreen:new {
  id = "bye",
  leftDialog = "",
    customDialogText = "Safe travels.",
stopConversation = "true",
   options = {  
  }
}
SRii_GTour01_convo_template:addScreen(bye);

-- Template Footer---------------------------------------------
addConversationTemplate("SRii_GTour01_convo_template", SRii_GTour01_convo_template);
