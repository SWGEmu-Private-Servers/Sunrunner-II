Vonhalgossiptemplate = ConvoTemplate:new {
    initialScreen = "vonhal",
    templateType = "Lua",
    luaClassHandler = "vonhalgossip_convo_handler",
    screens = {}
}

vonhal = ConvoScreen:new {
   id = "vonhal",
   leftDialog = "",
   customDialogText = "You there! You look like the adventurous type! Tell me, have you been in those woods by chance?",
   stopConversation = "false",
   options = {
        {"I have!","ihave"},
        {"Why do you ask?","whyask"},
        {"No, and I don't intend to.","nointent"}
    }
}
Vonhalgossiptemplate:addScreen(vonhal);

ihave = ConvoScreen:new {
   id = "ihave",
   leftDialog = "",
   customDialogText = "Finally! Someone courageous enough to venture where they please! What was in there? Treasure? Forgotten relics? Untold riches? Or are you going to tell me it's too dangerous like that coward Maxar over there?",
   stopConversation = "false",
   options = {
        {"I haven't found any treasure yet, but I'm sure there is some to be found!","notreasure"},
        {"You should be a bit more careful and listen to your friend.","carefulfriend"},
        {"I barely made it out alive! Don't go in there!","dontgoin"}
    }
}
Vonhalgossiptemplate:addScreen(ihave);

whyask = ConvoScreen:new {
   id = "whyask",
   leftDialog = "",
   customDialogText = "Nobody seems to know anything about these woods. Maxar thinks its because nobody has lived to talk about it, but I believe he's just being a big coward like always. Who knows what kind of forgotten treasure could be hidden in there!",
   stopConversation = "false",
   options = {
        {"It seems like your mind is set. I wish you luck.","wishluck"},
        {"Maxar might be right, you really should be careful.","maxcareful"}
    }
}
Vonhalgossiptemplate:addScreen(whyask);

nointent = ConvoScreen:new {
   id = "nointent",
   leftDialog = "",
   customDialogText = "Bah! I guess I was wrong. You're just as much of a coward as Maxar.",
   stopConversation = "true",
   options = {
    }
}
Vonhalgossiptemplate:addScreen(nointent);

notreasure = ConvoScreen:new {
   id = "notreasure",
   leftDialog = "",
   customDialogText = "I like you already! I wish my friends could be more like you. Whether they go with me or not - I'm going in there, and I will become the richest man in the galaxy!",
   stopConversation = "true",
   options = {
    }
}
Vonhalgossiptemplate:addScreen(notreasure);

carefulfriend = ConvoScreen:new {
   id = "carefulfriend",
   leftDialog = "",
   customDialogText = "Pssh! Listen pal, I can handle whatever this forest could throw at me. I don't need to be careful! Maybe you should talk to Maxar if you want to warn anyone.",
   stopConversation = "true",
   options = {
    }
}
Vonhalgossiptemplate:addScreen(carefulfriend);

dontgoin = ConvoScreen:new {
   id = "dontgoin",
   leftDialog = "",
   customDialogText = "Sounds to me like you're just inept. I'm sure I could take on whatever is dwelling in there with ease! Don't worry, pal. Keep training and I'm sure one day you'll become as great of an explorer as I am!",
   stopConversation = "true",
   options = {
    }
}
Vonhalgossiptemplate:addScreen(dontgoin);

wishluck = ConvoScreen:new {
   id = "wishluck",
   leftDialog = "",
   customDialogText = "Seems like everyone is too afraid to investigate these woods. Well, have a safe travel, friend.",
   stopConversation = "true",
   options = {
    }
}
Vonhalgossiptemplate:addScreen(wishluck);

maxcareful = ConvoScreen:new {
   id = "maxcareful",
   leftDialog = "",
   customDialogText = "I don't NEED to be careful! I'm a seasoned explorer! Go back to exploring the grassy plains of Naboo - that seems to be more up your alley, chump.",
   stopConversation = "true",
   options = {
    }
}
Vonhalgossiptemplate:addScreen(maxcareful);


addConversationTemplate("Vonhalgossiptemplate", Vonhalgossiptemplate);