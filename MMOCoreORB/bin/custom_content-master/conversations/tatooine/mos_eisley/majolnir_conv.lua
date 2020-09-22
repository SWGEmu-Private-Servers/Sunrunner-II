majolnir_convo_template = ConvoTemplate:new {
	initialScreen = "",
	templateType = "Lua",
	luaClassHandler = "SpeederConvoHandler",
	screens = {}
}

first_screen = ConvoScreen:new {
	id = "first_screen",
	leftDialog = "",
	customDialogText = "Han tells me you're in need of a speeder. Well, I told him 'this is the last time - and my debt's paid off!' I can't just hand these things out, you know?",
	stopConversation = "false",
	options = {
		{"OK, I'll do it.", "accept_mission_one"},
		{"What do I have to do?", "task_one_info"},
		{"I can't do this right now.", "exit_one"}
		--{"I want to reset this quest.", "reset_quest"}
	}
}
majolnir_convo_template:addScreen(first_screen);

accept_mission_one = ConvoScreen:new {
	id = "accept_mission_one",
	leftDialog = "",
	customDialogText = "There might be some wiring in the debris field over by...well, let me just send you a marker to it. Any engine parts may still have some in them.",
	stopConversation = "true",
	options = {}
}
majolnir_convo_template:addScreen(accept_mission_one);

task_one_info = ConvoScreen:new {
	id = "task_one_info",
	leftDialog = "",
	customDialogText = "Go and search where I tell ya. There's enough parts around here for me to put one together for you.",
	stopConversation = "false",
	options = {
		{"OK, I'll do it.", "accept_mission_one"},
		{"I can't do this right now.", "exit_one"}
	}
}
majolnir_convo_template:addScreen(task_one_info);

task_one_in_progress = ConvoScreen:new {
	id = "task_one_in_progress",
	leftDialog = "",
	customDialogText = "Have you not found any wiring yet?",
	stopConversation = "false",
	options = {
		{"I'll carry on looking.", "carry_on_one"},
		{"I don't want this mission right now.", "exit_one"}
		--{"I want to reset this quest.", "reset_quest"}
	}
}
majolnir_convo_template:addScreen(task_one_in_progress);

carry_on_one = ConvoScreen:new {
	id = "carry_on_one",
	leftDialog = "",
	customDialogText = "There's plenty the Jawa's haven't scavenged yet.",
	stopConversation = "true",
	options = {}
}
majolnir_convo_template:addScreen(carry_on_one);

task_two_in_progress = ConvoScreen:new {
	id = "task_two_in_progress",
	leftDialog = "",
	customDialogText = "I should search that junk and find a power booster.",
	stopConversation = "false",
	options = {
		{"I'll carry on looking.", "carry_on_two"},
		{"I don't want this mission right now.", "exit_one"}
		--{"I want to reset this quest.", "reset_quest"}
	}
}
majolnir_convo_template:addScreen(task_two_in_progress);

carry_on_two = ConvoScreen:new {
	id = "carry_on_two",
	leftDialog = "",
	customDialogText = "I'm sure there was one around there somewhere.",
	stopConversation = "true",
	options = {}
}
majolnir_convo_template:addScreen(carry_on_two);

task_three_in_progress = ConvoScreen:new {
	id = "task_three_in_progress",
	leftDialog = "",
	customDialogText = "You need to search the junk around here and find a steering array.",
	stopConversation = "false",
	options = {
		{"I'll carry on looking.", "carry_on_three"},
		{"I don't want this mission right now.", "exit_one"}
		--{"I want to reset this quest.", "reset_quest"}
	}
}
majolnir_convo_template:addScreen(task_three_in_progress);

carry_on_three = ConvoScreen:new {
	id = "carry_on_three",
	leftDialog = "",
	customDialogText = "I'm sure there was one around there somewhere.",
	stopConversation = "true",
	options = {}
}
majolnir_convo_template:addScreen(carry_on_three);

task_four_in_progress = ConvoScreen:new {
	id = "task_four_in_progress",
	leftDialog = "",
	customDialogText = "You should head out to the Tusken Zealot junktown to look for that engine.",
	stopConversation = "false",
	options = {
		{"I'll carry on looking.", "carry_on_four"},
		{"I don't want this mission right now.", "exit_one"}
		--{"I want to reset this quest.", "reset_quest"}
	}
}
majolnir_convo_template:addScreen(task_four_in_progress);

carry_on_four = ConvoScreen:new {
	id = "carry_on_four",
	leftDialog = "",
	customDialogText = "There's a speeder engine around there, I need it for your new speeder.",
	stopConversation = "true",
	options = {}
}
majolnir_convo_template:addScreen(carry_on_four);

exit_one = ConvoScreen:new {
	id = "exit_one",
	leftDialog = "",
	customDialogText = "Well that's up to you. Saves me a job!",
	stopConversation = "true",
	options = {}
}
majolnir_convo_template:addScreen(exit_one);

quest_complete = ConvoScreen:new {--TODO-Enable Vourk convo when SP active
	id = "quest_complete",
	leftDialog = "",
	--customDialogText = "Here's you speeder deed, I've thrown in a customization kit as it's my last job for Solo. If your still looking for work, go and talk to Vourk by the starport. I hear he needs help around the city. I also hear Jabba has people looking for you, I don't know what you have done, but I'm I wouldn't want him looking for me.",
	customDialogText = "Here's you speeder deed, I've thrown in a customization kit as it's my last job for Solo.",
	stopConversation = "true",
	options = {}
}
majolnir_convo_template:addScreen(quest_complete);

quest_completed = ConvoScreen:new {
	id = "quest_completed",
	leftDialog = "",
	customDialogText = "I don't care if you are a friend of Solo, I don't have anything else to talk to you about.",
	stopConversation = "true",
	options = {
		--{"I want to reset this quest.", "reset_quest"}
	}
}
majolnir_convo_template:addScreen(quest_completed);

reset_quest = ConvoScreen:new {
	id = "reset_quest",
	customDialogText = "OK Will reset",
	stopConversation = "true",
	options = {}
}
majolnir_convo_template:addScreen(reset_quest);

addConversationTemplate("majolnir_convo_template", majolnir_convo_template);
