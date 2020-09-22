treunLornConvoTemplate = ConvoTemplate:new {--string/en/conversation/ep3_myyydril_lorn.stf
	initialScreen = "first_screen",
	templateType = "Lua",
	luaClassHandler = "treunLornConvoHandler",
	screens = {}
}

first_screen = ConvoScreen:new {
	id = "first_screen",
	leftDialog = "@conversation/ep3_myyydril_lorn:s_54", -- My crystal? My crystal?! Do you have it..?
	stopConversation = "false",
	options = {
				{"@conversation/ep3_myyydril_lorn:s_56", "my_crystal"}, -- Yes, I have it. Here.
	}
}
treunLornConvoTemplate:addScreen(first_screen);

my_crystal = ConvoScreen:new {
	id = "my_crystal",
	leftDialog = "@conversation/ep3_myyydril_lorn:s_58", -- My crystal! [Lorn takes it in his hands.] ... for you alone, my master. For you!
	stopConversation = "false",
	options = {
				{"@conversation/ep3_myyydril_lorn:s_60", "lifeless_form"}, -- Wait! What's the crystal for?
	}
}
treunLornConvoTemplate:addScreen(my_crystal);

lifeless_form = ConvoScreen:new {
	id = "lifeless_form",
	leftDialog = "@conversation/ep3_myyydril_lorn:s_62", -- [Lorn points to the lifeless form.] My master. I have named him N-K 'Necrosis'.
	stopConversation = "false",
	options = {
				{"@conversation/ep3_myyydril_lorn:s_64", "encounter_start"}, -- That is your master? It's just a pile of junk.
	}
}
treunLornConvoTemplate:addScreen(lifeless_form);

encounter_start = ConvoScreen:new {
	id = "encounter_start",
	leftDialog = "@conversation/ep3_myyydril_lorn:s_66", -- [Lorn hisses.] No more talking! [Lorn turns away, whispering.] .. for you, my master! For you!
	stopConversation = "true",
	options = {}
}
treunLornConvoTemplate:addScreen(encounter_start);

addConversationTemplate("treunLornConvoTemplate", treunLornConvoTemplate);

