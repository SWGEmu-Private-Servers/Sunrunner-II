-- Header

jyn_convo_template = ConvoTemplate:new {
   initialScreen = "first_screen",
   templateType = "Lua",
   luaClassHandler = "jyn_convo_handler",
   screens = {}
}

-- Main Screen

jyn_convo_first_screen = ConvoScreen:new {
   id = "first_screen",
   leftDialog = "",
   customDialogText = "What?  You want directions?  This rock has nothing but snow, ice, and death on it.  Anyone foolish enough to come here deserves their icy tomb.  If you go south, you'll freeze solid to the ground overnight.  Go north and you'll get eaten alive by a Wampa.  Go east and you'll get snowblind and lost.  Go west and...  well...  never go west.  There is something truly dark and evil in those mountains...",
   stopConversation = "false",
   options = {
       {"I will play it safe, then.", "deny_quest"},
	   {"I didn't come all this way for nothing.", "accept_quest"},  
       }
}
jyn_convo_template:addScreen(jyn_convo_first_screen);



-- Deny Option Convo

jyn_convo_deny_quest = ConvoScreen:new {
   id = "deny_quest",
   leftDialog = "",
   customDialogText = "Good.  What are you even doing out here?  Go back home.",
   stopConversation = "true",
   options = {   
   }
}
jyn_convo_template:addScreen(jyn_convo_deny_quest);


-- accept Option Convo

jyn_convo_accept_quest = ConvoScreen:new {
	id = "accept_quest",
	leftDialog = "",
	customDialogText = "I'll start digging your grave.",
	stopConversation = "true",
	options = {
		
	}
}
jyn_convo_template:addScreen(jyn_convo_accept_quest);



-- Finalize template

addConversationTemplate("jyn_convo_template", jyn_convo_template);
