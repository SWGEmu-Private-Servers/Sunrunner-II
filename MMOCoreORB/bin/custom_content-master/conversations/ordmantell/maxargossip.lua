Maxargossiptemplate = ConvoTemplate:new {
    initialScreen = "maxar",
    templateType = "Lua",
    luaClassHandler = "maxargossip_convo_handler",
    screens = {}
}

maxar = ConvoScreen:new {
   id = "maxar",
   leftDialog = "",
   customDialogText = "GAH! Oh! S- sorry about that.. I thought you were something else! This forest has been giving me the creeps! I keep hearing strange noises, and something about it just gives me a really bad feeling in general! Vonhal is a little too eager to go in there and seems to have his mind set - no matter what Nessa or I say..",
   stopConversation = "false",
   options = {
        {"You're not wrong to be cautious about it","cautious"},
        {"What do you think could be in there?","whatsin"},
        {"Toughen up, there's nothing dangerous in there.","toughen"}
    }
}
Maxargossiptemplate:addScreen(maxar);

cautious = ConvoScreen:new {
   id = "cautious",
   leftDialog = "",
   customDialogText = "You've been in there?! What did you find?! The wilderness out here is bad enough - I can't imagine what could be lurking in there!",
   stopConversation = "false",
   options = {
        {"A lot of things that could kill you - I'm serious. Don't go in.","killyou"},
        {"I just wouldn't advise entering unless you're more prepared.","prepared"},
        {"I'm just kidding, it's completely safe!","totallysafe"}
    }
}
Maxargossiptemplate:addScreen(cautious);

whatsin = ConvoScreen:new {
   id = "whatsin",
   leftDialog = "",
   customDialogText = "Spiders, a lurking nexu or two, horned raptors, barbards, oh, and don't even get me started on the Sayormi! The rituals they partake in are absolutely morbid! I've seen one shrine left by them made out of adventurer's remains and that was enough for me!",
   stopConversation = "false",
   options = {
        {"Those do sound like valid reasons to be concerned, I might reconsider as well.","validconcern"},
        {"None of those scare me in the slightest.","noscare"}
    }
}
Maxargossiptemplate:addScreen(whatsin);

toughen = ConvoScreen:new {
   id = "toughen",
   leftDialog = "",
   customDialogText = "That's easy for you to say! Man, as if Vonhal wasn't bad enough already, now I have two people telling me to get over it!",
   stopConversation = "true",
   options = {
    }
}
Maxargossiptemplate:addScreen(toughen);

killyou = ConvoScreen:new {
   id = "killyou",
   leftDialog = "",
   customDialogText = "Finally someone rational! I don't care what Vonhal says - I'm not leaving this campsite! Thanks for warning me.",
   stopConversation = "true",
   options = {
    }
}
Maxargossiptemplate:addScreen(killyou);

prepared = ConvoScreen:new {
   id = "prepared",
   leftDialog = "",
   customDialogText = "That sounds like the better option. I don't exactly have any protective gear, or anything to defend myself with really. Thanks for giving me an excuse to get out of this mess!",
   stopConversation = "true",
   options = {
    }
}
Maxargossiptemplate:addScreen(prepared);

totallysafe = ConvoScreen:new {
   id = "totallysafe",
   leftDialog = "",
   customDialogText = "For some reason, I have a hard time trusting you on that... I'm going to put a bit more thought into it before I go in there, but thanks for the input.",
   stopConversation = "true",
   options = {
    }
}
Maxargossiptemplate:addScreen(totallysafe);

validconcern = ConvoScreen:new {
   id = "validconcern",
   leftDialog = "",
   customDialogText = "You really should! I haven't brought this up to the others yet, but between you and me - the other night I heard this eerie chanting coming from the woods. I couldn't tell if it was the Sayormi or something else entirely. I don't know about you, but I have no desire to find out!",
   stopConversation = "true",
   options = {
    }
}
Maxargossiptemplate:addScreen(validconcern);

noscare = ConvoScreen:new {
   id = "noscare",
   leftDialog = "",
   customDialogText = "I wish I could say the same thing. But then again, probably not - I'd likely be dead by now if that were the case!",
   stopConversation = "true",
   options = {
    }
}
Maxargossiptemplate:addScreen(noscare);


addConversationTemplate("Maxargossiptemplate", Maxargossiptemplate);