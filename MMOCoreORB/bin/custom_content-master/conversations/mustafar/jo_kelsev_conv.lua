jo_kelsev_convo_template = ConvoTemplate:new {
	initialScreen = "",
	templateType = "Lua",
	luaClassHandler = "jo_kelsev_conv_handler",
	screens = {}
}

first_screen = ConvoScreen:new {
	id = "first_screen",
	leftDialog = "@conversation/som_exploration_marker:s_15", --
	stopConversation = "false",
	options = {
		{"@conversation/som_exploration_marker:s_17", "markers_up"}, --Sure. What is it you need?
		{"@conversation/som_exploration_marker:s_76", "exit_one"}, --Not right now. Maybe later.
		{"Reset mission", "mission_one_reset"},
	}
}
jo_kelsev_convo_template:addScreen(first_screen);

exit_one = ConvoScreen:new {
	id = "exit_one",
	leftDialog = "@conversation/som_exploration_marker:s_78", --Of course. I wouldn't want to impose on you too much.
	stopConversation = "true",
	options = {}
}
jo_kelsev_convo_template:addScreen(exit_one);

markers_up = ConvoScreen:new {
	id = "markers_up",
	leftDialog = "@conversation/som_exploration_marker:s_19", --Well, I have put up a number of markers around the planet.
	stopConversation = "false",
	options = {
		{"@conversation/som_exploration_marker:s_21", "short_handed"} --Naturally. So what is it I can do for you?
	}
}
jo_kelsev_convo_template:addScreen(markers_up);

short_handed = ConvoScreen:new {
	id = "short_handed",
	leftDialog = "@conversation/som_exploration_marker:s_23", --Well, recent events have left me extremely short-handed, and I was hoping that you would check out these markers for me. 
	stopConversation = "false",
	options = {
		{"@conversation/som_exploration_marker:s_25", "precise_locations"} --That seems easy enough.
	}
}
jo_kelsev_convo_template:addScreen(short_handed);

precise_locations = ConvoScreen:new {
	id = "precise_locations",
	leftDialog = "@conversation/som_exploration_marker:s_27", --It would be, except that due to the shifting of our moon's surface, I cannot give you precise locations.
	stopConversation = "false",
	options = {
		{"@conversation/som_exploration_marker:s_29", "heart_crystal"} --What would this sort of job pay?
	}
}
jo_kelsev_convo_template:addScreen(precise_locations);

heart_crystal = ConvoScreen:new {
	id = "heart_crystal",
	leftDialog = "@conversation/som_exploration_marker:s_31", --Hmmmm... How about this? For each area you complete, I will pay you five thousand credits.
	stopConversation = "false",
	options = {
		{"@conversation/som_exploration_marker:s_33", "fabulous_crystal"} --What is a Tanray Heart Crystal?
	}
}
jo_kelsev_convo_template:addScreen(heart_crystal);

fabulous_crystal = ConvoScreen:new {
	id = "fabulous_crystal",
	leftDialog = "@conversation/som_exploration_marker:s_35", --Hmmmm... How about this? For each area you complete, I will pay you five thousand credits.
	stopConversation = "false",
	options = {
		{"@conversation/som_exploration_marker:s_37", "mission_one_opt_a"}, -- Okay, we have a deal.
		{"@conversation/som_exploration_marker:s_33", "exit_one"}
	}
}
jo_kelsev_convo_template:addScreen(fabulous_crystal);

mission_one_opt_a = ConvoScreen:new {
	id = "mission_one_opt_a",
	leftDialog = "@conversation/som_exploration_marker:s_44", --Excellent. So what area would you like to search for markers in?
	stopConversation = "false",
	options = {
		{"@conversation/som_exploration_marker:s_46", "accept_mining_field"}, --Do you have any markers around this facility?
		{"@conversation/som_exploration_marker:s_50", "accept_crystal_flats"}, --How about in the Crystal Flats?
		{"@conversation/som_exploration_marker:s_54", "accept_smoking_forest"}, --I would like to search the Smoking Forest.
		{"@conversation/som_exploration_marker:s_58", "accept_volcano"}, --Perhaps I could search the Central Volcano.
		{"@conversation/som_exploration_marker:s_62", "accept_burning_plains"}, --What about searching the Burning Plains?
		{"@conversation/som_exploration_marker:s_66", "accept_berkens_flow"}, --I will search the area called Berken's Flow.
		{"@conversation/som_exploration_marker:s_70", "accept_nesting_grounds"} --The Tulrus Nesting Grounds is a good spot.
	}
}
jo_kelsev_convo_template:addScreen(mission_one_opt_a);

accept_mining_field = ConvoScreen:new {
	id = "accept_mining_field",
	leftDialog = "@conversation/som_exploration_marker:s_48", --Sure do.
	stopConversation = "true",
	options = {}
}
jo_kelsev_convo_template:addScreen(accept_mining_field);

accept_crystal_flats = ConvoScreen:new {
	id = "accept_crystal_flats",
	leftDialog = "@conversation/som_exploration_marker:s_52", --Of course.
	stopConversation = "true",
	options = {}
}
jo_kelsev_convo_template:addScreen(accept_crystal_flats);

accept_smoking_forest = ConvoScreen:new {
	id = "accept_smoking_forest",
	leftDialog = "@conversation/som_exploration_marker:s_56", --That is a good choice.
	stopConversation = "true",
	options = {}
}
jo_kelsev_convo_template:addScreen(accept_smoking_forest);

accept_volcano = ConvoScreen:new {
	id = "accept_volcano",
	leftDialog = "@conversation/som_exploration_marker:s_60", --Always a nice decision.
	stopConversation = "true",
	options = {}
}
jo_kelsev_convo_template:addScreen(accept_volcano);

accept_burning_plains = ConvoScreen:new {
	id = "accept_burning_plains",
	leftDialog = "@conversation/som_exploration_marker:s_64", --I hear it is nice this time of year...well as nice as Mustafar gets
	stopConversation = "true",
	options = {}
}
jo_kelsev_convo_template:addScreen(accept_burning_plains);

accept_berkens_flow = ConvoScreen:new {
	id = "accept_berkens_flow",
	leftDialog = "@conversation/som_exploration_marker:s_68", --Ah, Berken's Flow...I learned how to mine there.
	stopConversation = "true",
	options = {}
}
jo_kelsev_convo_template:addScreen(accept_berkens_flow);

accept_nesting_grounds = ConvoScreen:new {
	id = "accept_nesting_grounds",
	leftDialog = "@conversation/som_exploration_marker:s_72", --A very fine valley.
	stopConversation = "true",
	options = {}
}
jo_kelsev_convo_template:addScreen(accept_nesting_grounds);

exit_two = ConvoScreen:new {
	id = "exit_two",
	leftDialog = "@conversation/som_exploration_marker:s_74", --No thanks. I think I will pass on this job.
	stopConversation = "true",
	options = {}
}
jo_kelsev_convo_template:addScreen(exit_two);

completed_berken = ConvoScreen:new {
	id = "completed_berken",
	customDialogText = "Well done, thank you. The Berkens Flow marker information should be valid for a little while yet. I believe there are still other incomplete fields though.",
	stopConversation = "true",
	options = {}
}
jo_kelsev_convo_template:addScreen(completed_berken);

completed_burning = ConvoScreen:new {
	id = "completed_burning",
	customDialogText = "Well done, thank you. The Burning Fields marker information should be valid for a little while yet. I believe there are still other incomplete fields though.",
	stopConversation = "true",
	options = {}
}
jo_kelsev_convo_template:addScreen(completed_burning);

completed_central = ConvoScreen:new {
	id = "completed_central",
	customDialogText = "Well done, thank you. The Crystal Flat's marker information should be valid for a little while yet. I believe there are still other incomplete fields though.",
	stopConversation = "true",
	options = {}
}
jo_kelsev_convo_template:addScreen(completed_central);

completed_crystal = ConvoScreen:new {
	id = "completed_crystal",
	customDialogText = "Well done, thank you. The Crystal Flat's marker information should be valid for a little while yet. I believe there are still other incomplete fields though.",
	stopConversation = "true",
	options = {}
}
jo_kelsev_convo_template:addScreen(completed_crystal);

completed_mining = ConvoScreen:new {
	id = "completed_mining",
	customDialogText = "Well done, thank you. The Crystal Flat's marker information should be valid for a little while yet. I believe there are still other incomplete fields though.",
	stopConversation = "true",
	options = {}
}
jo_kelsev_convo_template:addScreen(completed_mining);

completed_smoking = ConvoScreen:new {
	id = "completed_smoking",
	customDialogText = "Well done, thank you. The Crystal Flat's marker information should be valid for a little while yet. I believe there are still other incomplete fields though.",
	stopConversation = "true",
	options = {}
}
jo_kelsev_convo_template:addScreen(completed_smoking);

completed_nesting = ConvoScreen:new {
	id = "completed_nesting",
	customDialogText = "Well done, thank you. The Crystal Flat's marker information should be valid for a little while yet. I believe there are still other incomplete fields though.",
	stopConversation = "true",
	options = {}
}
jo_kelsev_convo_template:addScreen(completed_nesting);

mission_one_opt_b = ConvoScreen:new {
	id = "mission_one_opt_b",
	leftDialog = "@conversation/som_exploration_marker:s_44", --Excellent. So what area would you like to search for markers in?
	stopConversation = "false",
	options = {
		{"@conversation/som_exploration_marker:s_46", "accept_mining_field"}, --Do you have any markers around this facility?
		{"@conversation/som_exploration_marker:s_50", "accept_crystal_flats"}, --How about in the Crystal Flats?
		{"@conversation/som_exploration_marker:s_54", "accept_smoking_forest"}, --I would like to search the Smoking Forest.
		{"@conversation/som_exploration_marker:s_58", "accept_volcano"}, --Perhaps I could search the Central Volcano.
		{"@conversation/som_exploration_marker:s_62", "accept_burning_plains"}, --What about searching the Burning Plains?
		{"@conversation/som_exploration_marker:s_70", "accept_nesting_grounds"} --The Tulrus Nesting Grounds is a good spot.
	}
}
jo_kelsev_convo_template:addScreen(mission_one_opt_b);

mission_one_opt_c = ConvoScreen:new {
	id = "mission_one_opt_c",
	leftDialog = "@conversation/som_exploration_marker:s_44", --Excellent. So what area would you like to search for markers in?
	stopConversation = "false",
	options = {
		{"@conversation/som_exploration_marker:s_50", "accept_crystal_flats"}, --How about in the Crystal Flats?
		{"@conversation/som_exploration_marker:s_54", "accept_smoking_forest"}, --I would like to search the Smoking Forest.
		{"@conversation/som_exploration_marker:s_58", "accept_volcano"}, --Perhaps I could search the Central Volcano.
		{"@conversation/som_exploration_marker:s_62", "accept_burning_plains"}, --What about searching the Burning Plains?
		{"@conversation/som_exploration_marker:s_70", "accept_nesting_grounds"} --The Tulrus Nesting Grounds is a good spot.
	}
}
jo_kelsev_convo_template:addScreen(mission_one_opt_c);

mission_one_opt_d = ConvoScreen:new {
	id = "mission_one_opt_d",
	leftDialog = "@conversation/som_exploration_marker:s_44", --Excellent. So what area would you like to search for markers in?
	stopConversation = "false",
	options = {
		{"@conversation/som_exploration_marker:s_54", "accept_smoking_forest"}, --I would like to search the Smoking Forest.
		{"@conversation/som_exploration_marker:s_58", "accept_volcano"}, --Perhaps I could search the Central Volcano.
		{"@conversation/som_exploration_marker:s_62", "accept_burning_plains"}, --What about searching the Burning Plains?
		{"@conversation/som_exploration_marker:s_70", "accept_nesting_grounds"} --The Tulrus Nesting Grounds is a good spot.
	}
}
jo_kelsev_convo_template:addScreen(mission_one_opt_d);

mission_one_opt_e = ConvoScreen:new {
	id = "mission_one_opt_e",
	leftDialog = "@conversation/som_exploration_marker:s_44", --Excellent. So what area would you like to search for markers in?
	stopConversation = "false",
	options = {
		{"@conversation/som_exploration_marker:s_58", "accept_volcano"}, --Perhaps I could search the Central Volcano.
		{"@conversation/som_exploration_marker:s_62", "accept_burning_plains"}, --What about searching the Burning Plains?
		{"@conversation/som_exploration_marker:s_70", "accept_nesting_grounds"} --The Tulrus Nesting Grounds is a good spot.
	}
}
jo_kelsev_convo_template:addScreen(mission_one_opt_e);

mission_one_opt_f = ConvoScreen:new {
	id = "mission_one_opt_f",
	leftDialog = "@conversation/som_exploration_marker:s_44", --Excellent. So what area would you like to search for markers in?
	stopConversation = "false",
	options = {
		{"@conversation/som_exploration_marker:s_62", "accept_burning_plains"}, --What about searching the Burning Plains?
		{"@conversation/som_exploration_marker:s_70", "accept_nesting_grounds"} --The Tulrus Nesting Grounds is a good spot.
	}
}
jo_kelsev_convo_template:addScreen(mission_one_opt_f);

mission_one_opt_g = ConvoScreen:new {
	id = "mission_one_opt_g",
	leftDialog = "@conversation/som_exploration_marker:s_44", --Excellent. So what area would you like to search for markers in?
	stopConversation = "false",
	options = {
		{"@conversation/som_exploration_marker:s_70", "accept_nesting_grounds"} --The Tulrus Nesting Grounds is a good spot.
	}
}
jo_kelsev_convo_template:addScreen(mission_one_opt_g);

mission_one_opt_f = ConvoScreen:new {
	id = "mission_one_opt_f",
	leftDialog = "@conversation/som_exploration_marker:s_10", --Welcome back. It is good to see you are in good health. Are you back to check on some more markers for me?
	stopConversation = "false",
	options = {
		{"@conversation/som_exploration_marker:s_38", ""}, --Yeah, I will check a few more areas for you.
		{"@conversation/som_exploration_marker:s_39", ""} --No thanks. Maybe later.
	}
}
jo_kelsev_convo_template:addScreen(mission_one_opt_f);


mission_one_reset = ConvoScreen:new {
	id = "mission_one_reset",
	customDialogText = "I will reset all missions for you",
	stopConversation = "true",
	options = {}
}
jo_kelsev_convo_template:addScreen(mission_one_reset);

mission_in_progress = ConvoScreen:new {
	id = "mission_in_progress",
	customDialogText = "I appreciate your enthusiasm, but you have already accepted this mission.",
	stopConversation = "true",
	options = {}
}
jo_kelsev_convo_template:addScreen(mission_in_progress);

mission_completed = ConvoScreen:new {
	id = "mission_completed",
	leftDialog = "@conversation/som_exploration_marker:s_4", -- Ah, it is my good friend again. I hope everything is going well for you. Unfortunately, I cannot chat today
	stopConversation = "true",
	options = {}
}
jo_kelsev_convo_template:addScreen(mission_completed);

recieve_reward = ConvoScreen:new {
	id = "recieve_reward",
	leftDialog = "@conversation/som_exploration_marker:s_6", --Hello again, my friend. You certainly have done a wonderful job and saved me all sorts of trouble trying to check all of those markers out
	stopConversation = "true",
	options = {
		{"@conversation/som_exploration_marker:s_41", ""}, --Thank you.
	}
}
jo_kelsev_convo_template:addScreen(recieve_reward);

addConversationTemplate("jo_kelsev_convo_template", jo_kelsev_convo_template);


