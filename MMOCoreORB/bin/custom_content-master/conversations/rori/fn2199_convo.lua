-- Header

fn2199_convo_template = ConvoTemplate:new {
   initialScreen = "first_screen",
   templateType = "Lua",
   luaClassHandler = "fn2199_convo_handler",
   screens = {}
}

-- Main Screen

fn2199_convo_first_screen = ConvoScreen:new {
   id = "first_screen",
   leftDialog = "",
   customDialogText = "It's a big galaxy, friend.  Science, magic, mysticism, they all have their place.  I never believed in ghosts, until I saw her, wandering in the swamp.  I wouldn't dare approach her, she glows with the force, and overflows with rage and hatred.  I'm not sure she could be stopped, if she chose to focus her powers on the people, here.  Even with an entire army.",
   stopConversation = "false",
   options = {
       {"This thing just... wanders the planet?  I'll book the next flight out.", "deny_quest"},
	   {"With no risk, there is no reward.", "accept_quest"},  
       }
}
fn2199_convo_template:addScreen(fn2199_convo_first_screen);



-- Deny Option Convo

fn2199_convo_deny_quest = ConvoScreen:new {
   id = "deny_quest",
   leftDialog = "",
   customDialogText = "I just pray she remains content to wander.",
   stopConversation = "true",
   options = {   
   }
}
fn2199_convo_template:addScreen(fn2199_convo_deny_quest);


-- accept Option Convo

fn2199_convo_accept_quest = ConvoScreen:new {
	id = "accept_quest",
	leftDialog = "",
	customDialogText = "Please, I beg you, do not bring her wrath down upon the innocent.",
	stopConversation = "true",
	options = {
		
	}
}
fn2199_convo_template:addScreen(fn2199_convo_accept_quest);



-- Finalize template

addConversationTemplate("fn2199_convo_template", fn2199_convo_template);
