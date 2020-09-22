-- Header

bograideroutcast_convo_template = ConvoTemplate:new {
   initialScreen = "first_screen",
   templateType = "Lua",
   luaClassHandler = "bograideroutcast_convo_handler",
   screens = {}
}

-- Main Screen

bograideroutcast_convo_first_screen = ConvoScreen:new {
   id = "first_screen",
   leftDialog = "",
   customDialogText = "It's hard enough squeezing out a living under the Hutts, but when my own Bog Raider brothers reject me?  I'm lost.  Perhaps I should clean up my act.  One thing's for sure, they deserve whatever they have coming.  You seem tough, if you have the time, could you drop by their headquarters and give them a scare for me?  It's out in the open bog, to the northeast.",
   stopConversation = "false",
   options = {
       {"I barely know you, and I'd rather not get in trouble.", "deny_quest"},
	   {"Surely they'll have something valuable, I will try.", "accept_quest"},  
       }
}
bograideroutcast_convo_template:addScreen(bograideroutcast_convo_first_screen);



-- Deny Option Convo

bograideroutcast_convo_deny_quest = ConvoScreen:new {
   id = "deny_quest",
   leftDialog = "",
   customDialogText = "I can see you're not as tough as you look.",
   stopConversation = "true",
   options = {   
   }
}
bograideroutcast_convo_template:addScreen(bograideroutcast_convo_deny_quest);


-- accept Option Convo

bograideroutcast_convo_accept_quest = ConvoScreen:new {
	id = "accept_quest",
	leftDialog = "",
	customDialogText = "Ooh, they're going to get it!",
	stopConversation = "true",
	options = {
		
	}
}
bograideroutcast_convo_template:addScreen(bograideroutcast_convo_accept_quest);



-- Finalize template

addConversationTemplate("bograideroutcast_convo_template", bograideroutcast_convo_template);
