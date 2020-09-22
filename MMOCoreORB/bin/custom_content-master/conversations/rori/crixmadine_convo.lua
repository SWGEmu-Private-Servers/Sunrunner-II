-- Header

crixmadine_convo_template = ConvoTemplate:new {
   initialScreen = "first_screen",
   templateType = "Lua",
   luaClassHandler = "crixmadine_convo_handler",
   screens = {}
}

-- Main Screen

crixmadine_convo_first_screen = ConvoScreen:new {
   id = "first_screen",
   leftDialog = "",
   customDialogText = "We need every able body to report to the southeast quadrant immediately!  A massive battle has broken out between the Alliance and Imperial forces!  At this point, it looks like it could go either way.  We need to protect our equipment, and the command officers we have stationed there.  Are you free to assist, solider?",
   stopConversation = "false",
   options = {
       {"I apologize, I'm currently busy.", "deny_quest"},
	   {"I could feel it in my blood, the battlefield calls out to me.", "accept_quest"},  
       }
}
crixmadine_convo_template:addScreen(crixmadine_convo_first_screen);



-- Deny Option Convo

crixmadine_convo_deny_quest = ConvoScreen:new {
   id = "deny_quest",
   leftDialog = "",
   customDialogText = "Are you even authorized to be here?",
   stopConversation = "true",
   options = {   
   }
}
crixmadine_convo_template:addScreen(crixmadine_convo_deny_quest);


-- accept Option Convo

crixmadine_convo_accept_quest = ConvoScreen:new {
	id = "accept_quest",
	leftDialog = "",
	customDialogText = "That's great news, gear up and report to the battle immediately!",
	stopConversation = "true",
	options = {
		
	}
}
crixmadine_convo_template:addScreen(crixmadine_convo_accept_quest);



-- Finalize template

addConversationTemplate("crixmadine_convo_template", crixmadine_convo_template);
