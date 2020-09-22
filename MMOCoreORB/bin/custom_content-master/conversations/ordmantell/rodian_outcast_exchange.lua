-- Header

rodian_outcast_exchange_template = ConvoTemplate:new {
   initialScreen = "first_screen",
   templateType = "Lua",
   luaClassHandler = "rodian_outcast_exchange_convo_handler",
   screens = {}
}

-- 5 Token Exchange Screen

rodian_outcast_exchange_items_screen = ConvoScreen:new {
   id = "items_screen",
   leftDialog = "",
   customDialogText = "Give me the bones, so I may experiment on them, and I will reward you with a GREAT deed. Remember to have one extra spot in your inventory to make room for the deed",
   stopConversation = "false",
   options = {
	  {"A DD6 Pistol schematic", "1"},
	  {"An Ion Stun Pistol schematic", "2"},
	  {"Back", "first_screen"},
      {"No thank you.", "deny_quest"},
      }
}
rodian_outcast_exchange_template:addScreen(rodian_outcast_exchange_items_screen);



-- Main Screen

rodian_outcast_exchange_first_screen = ConvoScreen:new {
   id = "first_screen",
   leftDialog = "",
   customDialogText = "There is a secret bunker that my Master has taken over.  He didn't like my strange plans involving our bones, so he cast me out. Dispatch him, bring back the bones, and I will reward you. Look and see what I have to offer.",
   stopConversation = "false",
   options = {
      {"Items", "items"},
      {"No thank you.", "deny_quest"},
      }
}
rodian_outcast_exchange_template:addScreen(rodian_outcast_exchange_first_screen);

-- Purchase Completion

rodian_outcast_exchange_end_quest = ConvoScreen:new {
   id = "end",
   leftDialog = "",
   customDialogText = "A good choice, but be wary of the power you now have in your possession!",
   stopConversation = "true",
   options = {   
   }
}
rodian_outcast_exchange_template:addScreen(rodian_outcast_exchange_end_quest);

-- Deny Option Convo

rodian_outcast_exchange_deny_quest = ConvoScreen:new {
   id = "deny_quest",
   leftDialog = "",
   customDialogText = "You will probably never find the bunker, anyway",
   stopConversation = "true",
   options = {   
   }
}
rodian_outcast_exchange_template:addScreen(rodian_outcast_exchange_deny_quest);

-- Insufficient funds (used for credit purchases. not used for GMF)

rodian_outcast_exchange_insufficient_funds = ConvoScreen:new {
   id = "insufficient_funds",
   leftDialog = "",
   customDialogText = "Sorry, but you don't have enough credits with you to purchase that. Head on over to the bank. I'll be here when ya get back!",
   stopConversation = "true",
   options = {   
   }
}
rodian_outcast_exchange_template:addScreen(rodian_outcast_exchange_insufficient_funds);

-- Insufficient Space (get more inventory room!)

rodian_outcast_exchange_insufficient_space = ConvoScreen:new {
   id = "insufficient_space",
   leftDialog = "",
   customDialogText = "Sorry, but you don't have enough space in your inventory to accept the item. Please make some space and try again.",
   stopConversation = "true",
   options = {   
   }
}
rodian_outcast_exchange_template:addScreen(rodian_outcast_exchange_insufficient_space);

-- Insufficent Tokens. (need to loot more tokens)

rodian_outcast_exchange_insufficient_item = ConvoScreen:new {
   id = "insufficient_item",
   leftDialog = "",
   customDialogText = "You trying to get yourself killed are you? Come back with the proof of my Master's demise.",
   stopConversation = "true",
   options = {   
   }
}
rodian_outcast_exchange_template:addScreen(rodian_outcast_exchange_insufficient_item);

-- Finalize template

addConversationTemplate("rodian_outcast_exchange_template", rodian_outcast_exchange_template);
