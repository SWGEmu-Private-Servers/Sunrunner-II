ovarraConvoTemplate = ConvoTemplate:new {
	initialScreen = "",
	templateType = "Lua",
	luaClassHandler = "ovarra_conv_handler",
	screens = {}
}

first_screen = ConvoScreen:new {
	id = "first_screen",
	leftDialog = "@conversation/ep3_clone_relics_wookie_elder_ovarra:s_200", --May I help you?
	stopConversation = "false",
	options = {
		{"@conversation/ep3_clone_relics_wookie_elder_ovarra:s_202", "was_there"},--Hopefully. Were you involved in the trial of the Geonosian?
		{"@conversation/ep3_clone_relics_wookie_elder_ovarra:s_226", "what_are_they"}--Perhaps. You need to look at these documents.
	}
}
ovarraConvoTemplate:addScreen(first_screen);

was_there = ConvoScreen:new {
	id = "was_there",
	leftDialog = "@conversation/ep3_clone_relics_wookie_elder_ovarra:s_204", --Trial and trial but yes, I was there. Why?
	stopConversation = "false",
	options = {
		{"@conversation/ep3_clone_relics_wookie_elder_ovarra:s_206", "not_surprised"}--You should see these documents, they are quite interesting.
	}
}
ovarraConvoTemplate:addScreen(was_there);

not_surprised = ConvoScreen:new {
	id = "not_surprised",
	leftDialog = "@conversation/ep3_clone_relics_wookie_elder_ovarra:s_208", --< Ovarra starts to look through the documents. > I'm not too surprised.
	stopConversation = "false",
	options = {
		{"@conversation/ep3_clone_relics_wookie_elder_ovarra:s_210", "bribing_guards"}--So what happens now?
	}
}
ovarraConvoTemplate:addScreen(not_surprised);

what_are_they = ConvoScreen:new {
	id = "what_are_they",
	leftDialog = "@conversation/ep3_clone_relics_wookie_elder_ovarra:s_228", --What are they?
	stopConversation = "false",
	options = {
		{"@conversation/ep3_clone_relics_wookie_elder_ovarra:s_230", "limb_from_limb"}--How about you just look at them?
	}
}
ovarraConvoTemplate:addScreen(what_are_they);

limb_from_limb = ConvoScreen:new {
	id = "limb_from_limb",
	leftDialog = "@conversation/ep3_clone_relics_wookie_elder_ovarra:s_228", --What are they?
	stopConversation = "false",
	options = {
		{"@conversation/ep3_clone_relics_wookie_elder_ovarra:s_243", "not_surprised"}--Fine, fine. They are evidence in the trial against the Geonosian.
	}
}
ovarraConvoTemplate:addScreen(limb_from_limb);

bribing_guards = ConvoScreen:new {
	id = "bribing_guards",
	leftDialog = "@conversation/ep3_clone_relics_wookie_elder_ovarra:s_212", --Well, the fact remains that he did commit a crime by bribing one of our guards.
	stopConversation = "false",
	options = {
		{"@conversation/ep3_clone_relics_wookie_elder_ovarra:s_214", "convince_trando"}--I found the camp the Geonosian talked about.
	}
}
ovarraConvoTemplate:addScreen(bribing_guards);

convince_trando = ConvoScreen:new {
	id = "convince_trando",
	leftDialog = "@conversation/ep3_clone_relics_wookie_elder_ovarra:s_216", --Excellent, how did you manage to convince the Trandoshans to give these up, though?
	stopConversation = "false",
	options = {
		{"@conversation/ep3_clone_relics_wookie_elder_ovarra:s_218", "complete_one"},--Well I killed them of course. Worked like a charm.
		{"@conversation/ep3_clone_relics_wookie_elder_ovarra:s_222", "complete_two"}--I'm afraid I had no choice but to use violence.
	}
}
ovarraConvoTemplate:addScreen(convince_trando);

complete_one = ConvoScreen:new {
	id = "complete_one",
	--leftDialog = "@conversation/ep3_clone_relics_wookie_elder_ovarra:s_220",--Alright...well I guess it was for the best.
	customDialogText = "Alright...well I guess it was for the best. For stopping these evil schemes, we are all in your debt. I will send out a patrol to the area to make sure that no more of their research material is out there. You should go tell the Geonosian the good news.",
	stopConversation = "true",
	options = {
	}
}
ovarraConvoTemplate:addScreen(complete_one);

complete_two = ConvoScreen:new {
	id = "complete_two",
	--leftDialog = "@conversation/ep3_clone_relics_wookie_elder_ovarra:s_224",--In these days, it seems to be a necessary evil.
	customDialogText = "In these days, it seems to be a necessary evil. For stopping these evil schemes, we are all in your debt. I will send out a patrol to the area to make sure that no more of their research material is out there. You should go tell the Geonosian the good news.",
	stopConversation = "true",
	options = {
	}
}
ovarraConvoTemplate:addScreen(complete_two);

not_yet = ConvoScreen:new {
	id = "not_yet",
	leftDialog = "@conversation/ep3_clone_relics_wookie_elder_ovarra:s_247", --Yes?
	stopConversation = "false",
	options = {
		{"@conversation/ep3_clone_relics_wookie_elder_ovarra:s_252", "exit_one"}--Oh I'm sorry, I'm a bit lost.
	}
}
ovarraConvoTemplate:addScreen(not_yet);

exit_one = ConvoScreen:new {
	id = "exit_one",
	leftDialog = "@conversation/ep3_clone_relics_wookie_elder_ovarra:s_257",--Alright...well I guess it was for the best.
	stopConversation = "true",
	options = {
	}
}
ovarraConvoTemplate:addScreen(exit_one);

completed = ConvoScreen:new {
	id = "completed",
	customDialogText = "We are all in your debt. Thank you again for all you have done.",
	stopConversation = "true",
	options = {
	}
}
ovarraConvoTemplate:addScreen(completed);

--[[
string/en/conversation/ep3_clone_relics_wookie_elder_ovarra.stf

QM 
1 find camp  - active area 456, 18, 240 50m
2. Steal research docs.
	sys msg "Trandoshan research document." .. countLeft .. " remaining" --100% drop
3. return Ikvizi
4. Find Ovarra




--]]






addConversationTemplate("ovarraConvoTemplate", ovarraConvoTemplate);
