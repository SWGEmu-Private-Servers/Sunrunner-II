-- Header

hanfiller_convo_template = ConvoTemplate:new {
   initialScreen = "first_screen",
   templateType = "Lua",
   luaClassHandler = "hanfiller_convo_handler",
   screens = {}
}

-- Main Screen

hanfiller_convo_first_screen = ConvoScreen:new {
   id = "first_screen",
   leftDialog = "",
   customDialogText = "Look, kid - I've got an appointment in another system and I don't have time to take on any sympathy cases. If you need some work, I'm sure the Car'das could use a hand driving that Hutt crime boss off of Station Gamma, they're shuttling there from the other hangar.",
   stopConversation = "false",
   options = {
       {"No thanks, I don't have a desire for combat.", "deny_quest"},
	   {"I'm a bit rusty, but I'm sure I can be of help.", "accept_quest"},  
       }
}
hanfiller_convo_template:addScreen(hanfiller_convo_first_screen);



-- Deny Option Convo

hanfiller_convo_deny_quest = ConvoScreen:new {
   id = "deny_quest",
   leftDialog = "",
   customDialogText = "Probably the safest bet, in this case.  Good luck out there.",
   stopConversation = "true",
   options = {   
   }
}
hanfiller_convo_template:addScreen(hanfiller_convo_deny_quest);


-- accept Option Convo

hanfiller_convo_accept_quest = ConvoScreen:new {
	id = "accept_quest",
	leftDialog = "",
	customDialogText = "Well, if you make it through, be sure to look up my...friend, Majolnir, in Mos Eisley.  He may have a speeder for you - and remind him that he owes me a favor!",
	stopConversation = "true",
	options = {
		
	}
}
hanfiller_convo_template:addScreen(hanfiller_convo_accept_quest);



-- Finalize template

addConversationTemplate("hanfiller_convo_template", hanfiller_convo_template);
