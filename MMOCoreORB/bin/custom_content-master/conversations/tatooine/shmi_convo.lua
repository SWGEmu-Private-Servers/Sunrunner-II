-- Header

shmi_convo_template = ConvoTemplate:new {
   initialScreen = "first_screen",
   templateType = "Lua",
   luaClassHandler = "shmi_convo_handler",
   screens = {}
}

-- Main Screen

shmi_convo_first_screen = ConvoScreen:new {
   id = "first_screen",
   leftDialog = "",
   customDialogText = "What's that?  You don't want to hear what I have to say, but since you bothered me...  You've seen the great Dragons, the giant ones, the ancient ones?  You've never seen anything like this.  It doesn't want us here, the Scourge will burn an entire town to the ground, devour the poor people, then move on to the next.  We are living on borrowed time!",
   stopConversation = "false",
   options = {
       {"Then why are we standing here?  Run away!", "deny_quest"},
	   {"Sounds like a challenge.", "accept_quest"},  
       }
}
shmi_convo_template:addScreen(shmi_convo_first_screen);



-- Deny Option Convo

shmi_convo_deny_quest = ConvoScreen:new {
   id = "deny_quest",
   leftDialog = "",
   customDialogText = "I have already packed, life is nothing to be wasted.",
   stopConversation = "true",
   options = {   
   }
}
shmi_convo_template:addScreen(shmi_convo_deny_quest);


-- accept Option Convo

shmi_convo_accept_quest = ConvoScreen:new {
	id = "accept_quest",
	leftDialog = "",
	customDialogText = "Are you insane?  It'll take a whole army!",
	stopConversation = "true",
	options = {
		
	}
}
shmi_convo_template:addScreen(shmi_convo_accept_quest);



-- Finalize template

addConversationTemplate("shmi_convo_template", shmi_convo_template);
