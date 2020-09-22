striderleaderrumorConvoTemplate = ConvoTemplate:new {
   initialScreen = "leaderrumor",
   templateType = "Lua",
   luaClassHandler = "strider_clue_convo_handler",
   screens = {}
}

leaderrumor = ConvoScreen:new {
  id = "leaderrumor",
  leftDialog = "",
  customDialogText = "Are you familiar with the Strider Syndicate? Their leader is said to be extremely powerful - fortunately for us, he won't be bothering us anytime soon.",
  stopConversation = "false",
  options = {
      {"What happened to him?","whathap"},
      {"I don't have time to chat.","notime"}
   }
}
striderleaderrumorConvoTemplate:addScreen(leaderrumor);

whathap = ConvoScreen:new {
  id = "whathap",
  leftDialog = "",
  customDialogText = "He was on board a space station that had plummeted into the planet. No survivors from what I've heard, but those Striders seem very determined to confirm if he's actually dead. A hopeless cause if you ask me.",
  stopConversation = "false",
  options = {
      {"I'd like to find out as well.","metoo"},
      {"How tragic. I must be off now.","offnow"}
   }
}
striderleaderrumorConvoTemplate:addScreen(whathap);

notime = ConvoScreen:new {
  id = "notime",
  leftDialog = "",
  customDialogText = "I get ya - places to go, people to see. Take care of yourself.",
  stopConversation = "true",
  options = {
   }
}
striderleaderrumorConvoTemplate:addScreen(notime);

metoo = ConvoScreen:new {
  id = "metoo",
  leftDialog = "",
  customDialogText = "For your sake, you're better off doing something else. The Strider Syndicate is ruthless and getting involved with their affairs is just asking for trouble.",
  stopConversation = "true",
  options = {
   }
}
striderleaderrumorConvoTemplate:addScreen(metoo);

offnow = ConvoScreen:new {
  id = "offnow",
  leftDialog = "",
  customDialogText = "My heart goes out to everyone on that station. Take care of yourself.",
  stopConversation = "true",
  options = {
   }
}
striderleaderrumorConvoTemplate:addScreen(offnow);


addConversationTemplate("striderleaderrumorConvoTemplate", striderleaderrumorConvoTemplate);