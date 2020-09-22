Drunkrumortemplate = ConvoTemplate:new {
   initialScreen = "drunkenrumor",
   templateType = "Lua",
   luaClassHandler = "drunkrumor_convo_handler",
   screens = {}
}

drunkenrumor = ConvoScreen:new {
  id = "drunkenrumor",
  leftDialog = "",
  customDialogText = "HRRK.. Ough... Oh! There you are bartender! It's about time you sh-- showed up. Oh my head..",
  stopConversation = "false",
  options = {
      {"Uhh.. I'm not the bartender, and I think you've had enough","enough"},
      {"(Back away slowly)","backaway"}
   }
}
Drunkrumortemplate:addScreen(drunkenrumor);

enough = ConvoScreen:new {
  id = "enough",
  leftDialog = "",
  customDialogText = "ENOUGH?! You listen here, pal. If you went through what I've be-- been through *HIC* youuu would be in the same situation!",
  stopConversation = "false",
  options = {
      {"Well, what happened?","drunkwhat"},
      {"I'm not wasting any more time with a drunkard.","drunkard"}
   }
}
Drunkrumortemplate:addScreen(enough);

backaway = ConvoScreen:new {
  id = "backaway",
  leftDialog = "",
  customDialogText = "W-- Wait! I didn't get my drink yet! *HIC* Oughhh..",
  stopConversation = "true",
  options = {
   }
}
Drunkrumortemplate:addScreen(backaway);

drunkwhat = ConvoScreen:new {
  id = "drunkwhat",
  leftDialog = "",
  customDialogText = "My home.. My beautiful home.. RUINED BY THEM!",
  stopConversation = "false",
  options = {
      {"Them?","them"}
   }
}
Drunkrumortemplate:addScreen(drunkwhat);

drunkard = ConvoScreen:new {
  id = "drunkard",
  leftDialog = "",
  customDialogText = "Ouughhh.... YOUUU are nooo better than those scum! *HIC*",
  stopConversation = "true",
  options = {
   }
}
Drunkrumortemplate:addScreen(drunkard);

them = ConvoScreen:new {
  id = "them",
  leftDialog = "",
  customDialogText = "Those SCOUNDRELS! BRUTES! PSYCHOPATHS! They ruined our beautiful city! Slaughtered our families! Erased our history! EVERYTHING! DESTROYED!",
  stopConversation = "false",
  options = {
      {"Disinous city was your home? I'm sorry to hear that happened to you.","disinous"},
      {"(Back away before he gets too violent)","violent"}
   }
}
Drunkrumortemplate:addScreen(them);

disinous = ConvoScreen:new {
  id = "disinous",
  leftDialog = "",
  customDialogText = "Disinous city... Beautiful Disinous city.. Thank you for reminding me about its name, all this drinking made me forget for a moment. I need to rest.",
  stopConversation = "true",
  options = {
   }
}
Drunkrumortemplate:addScreen(disinous);

violent = ConvoScreen:new {
  id = "violent",
  leftDialog = "",
  customDialogText = "CRUMBLED! SHAMBLES! DEMOLISHED! RAVAGED! *HIC* Ouughhhh..",
  stopConversation = "true",
  options = {
   }
}
Drunkrumortemplate:addScreen(violent);


addConversationTemplate("Drunkrumortemplate", Drunkrumortemplate);