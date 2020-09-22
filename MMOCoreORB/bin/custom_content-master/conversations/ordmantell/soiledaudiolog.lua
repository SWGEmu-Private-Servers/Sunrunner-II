Soiledaudiologconvotemplate = ConvoTemplate:new {
    initialScreen = "soiledaudio",
    templateType = "Lua",
    luaClassHandler = "soiledaudiolog_convo_handler",
    screens = {}
}

soiledaudio = ConvoScreen:new {
   id = "soiledaudio",
   leftDialog = "",
   customDialogText = "(Upon inspection, while this audio log is very filthy, it appears to still be functional. Would you like to listen to it?)",
   stopConversation = "false",
   options = {
        {"(Activate audio log #1.)","audio1"}
    }
}
Soiledaudiologconvotemplate:addScreen(soiledaudio);

audio1 = ConvoScreen:new {
   id = "audio1",
   leftDialog = "",
   customDialogText = "Day 1: That woman doesn't know what she's talking about! Vrirash and I are seasoned adventurers! We've survived the nexu cave, a grogilla pack, and escaped  the webs of spined spiders - this will be a cinch!",
   stopConversation = "false",
   options = {
        {"(Proceed to log #2)","audio2"}
    }
}
Soiledaudiologconvotemplate:addScreen(audio1);

audio2 = ConvoScreen:new {
   id = "audio2",
   leftDialog = "",
   customDialogText = "Day 2: So far so good! On top of the rations we brought with us - Vrirash and I have found loads of berries and other foraged goods! Things are really looking up - we could practically live here if we wanted to!",
   stopConversation = "false",
   options = {
        {"(Proceed to log #3)","audio3"}
    }
}
Soiledaudiologconvotemplate:addScreen(audio2);

audio3 = ConvoScreen:new {
   id = "audio3",
   leftDialog = "",
   customDialogText = "Day 3: Just as I was getting tired of eatting berries - we found ourselves a nest of hawkbats! The poor buggers are a little too trusting for their own good, but we've got enough to keep us fed for weeks!",
   stopConversation = "false",
   options = {
        {"(Proceed to log #4)","audio4"}
    }
}
Soiledaudiologconvotemplate:addScreen(audio3);

audio4 = ConvoScreen:new {
   id = "audio4",
   leftDialog = "",
   customDialogText = "Day 4: The lack of sunlight must be taking its toll on Vrirash. He insists that he saw some bones hanging from a tree like some kind of decoration! Talk about crazy, huh? Maybe the hawkbat meat was bad. I'm sure he will be fine after he sleeps it off.",
   stopConversation = "false",
   options = {
        {"(Proceed to log #5)","audio5"}
    }
}
Soiledaudiologconvotemplate:addScreen(audio4);

audio5 = ConvoScreen:new {
   id = "audio5",
   leftDialog = "",
   customDialogText = "Day 5: Something has been stealing from our camp while we're away.. I thought Vrirash was just hungrier than usual after yesterday's incident, but he insisted it wasn't him.  Now we've lost half of our hawkbat meat supply. If that thing ever comes back, I've got a vibroblade with its name on it..",
   stopConversation = "false",
   options = {
        {"(Proceed to log #6)","audio6"}
    }
}
Soiledaudiologconvotemplate:addScreen(audio5);

audio6 = ConvoScreen:new {
   id = "audio6",
   leftDialog = "",
   customDialogText = "Day 6: Vrirash was right... I saw the bones hanging from a tree he mentioned the other day - not only that, but I found an abandoned bag near it with nothing but old dirty clothes... What's going on in this forest?",
   stopConversation = "false",
   options = {
        {"(Proceed to log #7)","audio7"}
    }
}
Soiledaudiologconvotemplate:addScreen(audio6);
audio7 = ConvoScreen:new {
   id = "audio7",
   leftDialog = "",
   customDialogText = "Day 7: Vrirash is really losing it, he was focused on something far out into the forest. I tried to look, but didn't see anything - he wouldn't even acknowledge my presence! We're leaving this forest tomorrow..",
   stopConversation = "false",
   options = {
        {"(Proceed to log #8)","audio8"}
    }
}
Soiledaudiologconvotemplate:addScreen(audio7);

audio8 = ConvoScreen:new {
   id = "audio8",
   leftDialog = "",
   customDialogText = "Day 8: Vrirash vanished.. He was nowhere to be found when I woke up this morning.. This better be some kind of sick prank! If he doesn't show up tomorrow, then I'm out of here!",
   stopConversation = "false",
   options = {
        {"(Proceed to log #9)","audio9"}
    }
}
Soiledaudiologconvotemplate:addScreen(audio8);

audio9 = ConvoScreen:new {
   id = "audio9",
   leftDialog = "",
   customDialogText = "Day 9: I.. I found Vrirash.. his body was just left to rot in front of a tree in our campsite, and not only that, but I saw those bones hanging from the tree again.. right above him.. I can't stay here..",
   stopConversation = "false",
   options = {
        {"(Proceed to the next part of log #9)","audio92"}
    }
}
Soiledaudiologconvotemplate:addScreen(audio9);

audio92 = ConvoScreen:new {
   id = "audio92",
   leftDialog = "",
   customDialogText = "If anyone finds this audio log - LEAVE. NOW! I don't know what these people or these THINGS are, but everywhere I look I see them staring at me! All around the camp!",
   stopConversation = "false",
   options = {
        {"(Proceed to the next part of log #9)","audio93"}
    }
}
Soiledaudiologconvotemplate:addScreen(audio92);

audio93 = ConvoScreen:new {
   id = "audio93",
   leftDialog = "",
   customDialogText = "They're coming closer... this is the end for me. Tulsi, you were right.. I'm sorry I didn't listen. If you hear this I hope you can forgive me... forgi- AAAAGHHH!! *ZRRRT* (The audio log cuts off.)",
   stopConversation = "false",
   options = {
        {"(Turn off the audio log.)","audiologoff"}
    }
}
Soiledaudiologconvotemplate:addScreen(audio93);

audiologoff = ConvoScreen:new {
   id = "audiologoff",
   leftDialog = "",
   customDialogText = "(You turn off the audio log and place it back where you found it.)",
   stopConversation = "true",
   options = {
    }
}
Soiledaudiologconvotemplate:addScreen(audiologoff);


addConversationTemplate("Soiledaudiologconvotemplate", Soiledaudiologconvotemplate);