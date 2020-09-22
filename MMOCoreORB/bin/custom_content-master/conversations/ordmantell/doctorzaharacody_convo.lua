-- Header

doctorzaharacody_convo_template = ConvoTemplate:new {
   initialScreen = "first_screen",
   templateType = "Lua",
   luaClassHandler = "doctorzaharacody_convo_handler",
   screens = {}
}

-- Main Screen

doctorzaharacody_convo_first_screen = ConvoScreen:new {
   id = "first_screen",
   leftDialog = "",
   customDialogText = "Why yes, I am a legitimate Doctor...  have you heard otherwise?  My doubters have spread rumors about me, that I worked with Treilan, up in the mountains.  Lies!  My work is ethical, beneficial.  There is probably a bounty on Treilan's head, for what he's done, or at least there should be!  His laboratory is somewhere in a forested valley, between the mountains to the northeast.",
   stopConversation = "false",
   options = {
       {"I'm sure that you are a legitimate Doctor, I have to leave, now.", "deny_quest"},
	   {"Bounty or not, I may have to find this place.", "accept_quest"},  
       }
}
doctorzaharacody_convo_template:addScreen(doctorzaharacody_convo_first_screen);



-- Deny Option Convo

doctorzaharacody_convo_deny_quest = ConvoScreen:new {
   id = "deny_quest",
   leftDialog = "",
   customDialogText = "I can show you my certificate!",
   stopConversation = "true",
   options = {   
   }
}
doctorzaharacody_convo_template:addScreen(doctorzaharacody_convo_deny_quest);


-- accept Option Convo

doctorzaharacody_convo_accept_quest = ConvoScreen:new {
	id = "accept_quest",
	leftDialog = "",
	customDialogText = "I wish you success, something needs to be done.",
	stopConversation = "true",
	options = {
		
	}
}
doctorzaharacody_convo_template:addScreen(doctorzaharacody_convo_accept_quest);



-- Finalize template

addConversationTemplate("doctorzaharacody_convo_template", doctorzaharacody_convo_template);
