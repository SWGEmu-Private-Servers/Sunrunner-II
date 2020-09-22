Nessagossiptemplate = ConvoTemplate:new {
    initialScreen = "nessa",
    templateType = "Lua",
    luaClassHandler = "nessagossip_convo_handler",
    screens = {}
}

nessa = ConvoScreen:new {
   id = "nessa",
   leftDialog = "",
   customDialogText = "Didn't expect to find another traveler out here.. What brings you here?",
   stopConversation = "false",
   options = {
        {"I should be asking you the same thing!","samething"},
        {"Should I not be here?","notbehere"},
        {"Does it matter? My business is none of your concern!","noconcern"}
    }
}
Nessagossiptemplate:addScreen(nessa);

samething = ConvoScreen:new {
   id = "samething",
   leftDialog = "",
   customDialogText = "I suppose so. Vonhal, Maxar and I have been exploring together for a long time. It's gotten to a point where we've felt like we've seen it all, but this forest... something about this forest feels different. Vonhal seems incredibly eager to go in there, but Maxar is much more hesitant, I'm still a bit unsure myself.",
   stopConversation = "false",
   options = {
        {"Do as you wish, but I would remain cautious. Who knows what could be in there!","remaincautious"},
        {"I would think on it some more - don't risk your life over it.","dontrisk"},
        {"I say go for it! What do you have to lose?","goforit"}
    }
}
Nessagossiptemplate:addScreen(samething);

notbehere = ConvoScreen:new {
   id = "notbehere",
   leftDialog = "",
   customDialogText = "I didn't say that! This just doesn't seem to be the kind of place you'd run into someone. Although, with how little is known about this forest - I'm not sure if I could recommend exploring it to anyone just yet..",
   stopConversation = "false",
   options = {
        {"You may be right, I'll be giving it some thought before I go in there.","somethought"},
        {"I've got nothing to lose, I'll be checking it out!","nothingtolose"}
    }
}
Nessagossiptemplate:addScreen(notbehere);

noconcern = ConvoScreen:new {
   id = "noconcern",
   leftDialog = "",
   customDialogText = "Talk about being snarky.. I'm sure I'll find your remains being used as decoration by the Sayormi if you keep up with that attitude. Get outta here and continue on with your 'business'.",
   stopConversation = "true",
   options = {
    }
}
Nessagossiptemplate:addScreen(noconcern);

remaincautious = ConvoScreen:new {
   id = "remaincautious",
   leftDialog = "",
   customDialogText = "You're right, life isn't worth risking for a momentary thrill. I will put more consideration into it before diving right in. Take care of yourself!",
   stopConversation = "true",
   options = {
    }
}
Nessagossiptemplate:addScreen(remaincautious);

dontrisk = ConvoScreen:new {
   id = "dontrisk",
   leftDialog = "",
   customDialogText = "Life is nothing to be wasted, and I'm sure there are many more places to discover out there - maybe I will reconsider.",
   stopConversation = "true",
   options = {
    }
}
Nessagossiptemplate:addScreen(dontrisk);

goforit = ConvoScreen:new {
   id = "goforit",
   leftDialog = "",
   customDialogText = "The last few places we've explored have been pretty dull.. Ehh, why not! Sometimes you just have to live in the moment I suppose. Thanks for the input!",
   stopConversation = "true",
   options = {
    }
}
Nessagossiptemplate:addScreen(goforit);

somethought = ConvoScreen:new {
   id = "somethought",
   leftDialog = "",
   customDialogText = "That seems like  the smart way to go about it. If the wildlife out here is as dangerous as it is - I can't imagine what lurks in those woods.",
   stopConversation = "true",
   options = {
    }
}
Nessagossiptemplate:addScreen(somethought);

nothingtolose = ConvoScreen:new {
   id = "nothingtolose",
   leftDialog = "",
   customDialogText = "I wish you luck, friend. Please be safe, and if you make it back out - tell me all about what you found in there, okay?",
   stopConversation = "true",
   options = {
    }
}
Nessagossiptemplate:addScreen(nothingtolose);


addConversationTemplate("Nessagossiptemplate", Nessagossiptemplate);