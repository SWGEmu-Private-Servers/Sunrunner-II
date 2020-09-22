smugglerCrateDealerConvoTemplate = ConvoTemplate:new {
	initialScreen = "first_screen",
	templateType = "Lua",
	luaClassHandler = "smugglerCrateDealerConvoHandler",
	screens = {}
}

first_screen = ConvoScreen:new {
	id = "first_screen",
	leftDialog = "",
	customDialogText = "The Empire has been cracking down lately, and we've seen an uptick in jettisoned cargo floating our way.  We don't have space to store it all, so I've been authorized by the Station Master to start selling off lots to 'capable' movers of exotic merchandise.  The cost is 1,000,000 CASH for a lot of TWO items, are you game?",
	stopConversation = "false",
	options = {
				{"Sure, I'll gamble. (SPEND 1,000,000 cash)", "goahead"},
	}
}
smugglerCrateDealerConvoTemplate:addScreen(first_screen);

goahead = ConvoScreen:new {
  id = "goahead",
  leftDialog = "",
  customDialogText = "All transactions are final.",
  stopConversation = "true",
  options = {}
}
smugglerCrateDealerConvoTemplate:addScreen(goahead);

inventory_full = ConvoScreen:new {
  id = "inventory_full",
  leftDialog = "",
  customDialogText = "Make some space in your inventory, first.",
  stopConversation = "true",
  options = {}
}
smugglerCrateDealerConvoTemplate:addScreen(inventory_full);

insufficient_funds = ConvoScreen:new {
  id = "insufficient_funds",
  leftDialog = "",
  customDialogText = "Come back when you've got enough cash.",
  stopConversation = "true",
  options = {}
}
smugglerCrateDealerConvoTemplate:addScreen(insufficient_funds);

addConversationTemplate("smugglerCrateDealerConvoTemplate", smugglerCrateDealerConvoTemplate);

