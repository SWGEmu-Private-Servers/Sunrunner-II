-- Header

raesloane_convo_template = ConvoTemplate:new {
   initialScreen = "first_screen",
   templateType = "Lua",
   luaClassHandler = "raesloane_convo_handler",
   screens = {}
}

-- Main Screen

raesloane_convo_first_screen = ConvoScreen:new {
   id = "first_screen",
   leftDialog = "",
   customDialogText = "I shouldn't be saying this, but even in as grand an organization as the Empire, there is dissent.  The Silent Shades are a group of undisciplined radicals.  I would recommend you stay away from the north-west quadrant until they are eliminated.",
   stopConversation = "false",
   options = {
       {"I'll be sure to steer clear of that area.", "deny_quest"},
	   {"Radicals?  They haven't met me, yet.", "accept_quest"},  
       }
}
raesloane_convo_template:addScreen(raesloane_convo_first_screen);



-- Deny Option Convo

raesloane_convo_deny_quest = ConvoScreen:new {
   id = "deny_quest",
   leftDialog = "",
   customDialogText = "As you should.  Are you even authorized to be in this area?",
   stopConversation = "true",
   options = {   
   }
}
raesloane_convo_template:addScreen(raesloane_convo_deny_quest);


-- accept Option Convo

raesloane_convo_accept_quest = ConvoScreen:new {
	id = "accept_quest",
	leftDialog = "",
	customDialogText = "You have been warned.",
	stopConversation = "true",
	options = {
		
	}
}
raesloane_convo_template:addScreen(raesloane_convo_accept_quest);



-- Finalize template

addConversationTemplate("raesloane_convo_template", raesloane_convo_template);
