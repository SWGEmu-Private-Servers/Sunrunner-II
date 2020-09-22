entha_kandela_convo_template = ConvoTemplate:new {
	initialScreen = "",
	templateType = "Lua",
	luaClassHandler = "entha_kandela_conv_handler",
	screens = {}
}

first_screen = ConvoScreen:new {
	id = "first_screen",
	leftDialog = "@conversation/newbie_scout:s_343", -- I assume that the mayor sent you?
	stopConversation = "false",
	options = {
		{"@conversation/newbie_scout:s_154", "he_did"}, -- Yes he did.
		{"Reset Quest", "reset_quest"},
	}
}
entha_kandela_convo_template:addScreen(first_screen);

he_did = ConvoScreen:new {
	id = "he_did",
	leftDialog = "@conversation/newbie_scout:s_156", -- Well at least he is listening. I need people to do some dirty jobs. You interested?
	stopConversation = "false",
	options = {
		{"@conversation/newbie_scout:s_158", "accept_mission_one"}, -- Just tell me what to do.
		{"@conversation/newbie_scout:s_162", "public_health"}, -- How dirty?
		{"@conversation/newbie_scout:s_176", "exit_one"} -- Not interested.
	}
}
entha_kandela_convo_template:addScreen(he_did);

exit_one = ConvoScreen:new {
	id = "exit_one",
	leftDialog = "@conversation/newbie_scout:s_174", -- Yea you looked like someone who wouldn't know a real problem if it bit him. 
	stopConversation = "true",
	options = {
	}
}
entha_kandela_convo_template:addScreen(exit_one);

public_health = ConvoScreen:new {
	id = "public_health",
	leftDialog = "@conversation/newbie_scout:s_164", -- The public health in Mos Eisely is in danger. If we don't get the vermin under control we will lose this city.
	stopConversation = "false",
	options = {
		{"@conversation/newbie_scout:s_166", "massive_vermin"} -- You are kidding.
	}
}
entha_kandela_convo_template:addScreen(public_health);

massive_vermin = ConvoScreen:new {
	id = "massive_vermin",
	leftDialog = "@conversation/newbie_scout:s_168", -- I am not. I have reports of massive vermin population increases and  infestation all around the city.
	stopConversation = "false",
	options = {
		{"@conversation/newbie_scout:s_170", "accept_mission_one"}, -- OK I will do it. 
		{"@conversation/newbie_scout:s_172", "exit_one"} -- I am passing on this. 
	}
}
entha_kandela_convo_template:addScreen(massive_vermin);

accept_mission_one = ConvoScreen:new {
	id = "accept_mission_one",
	leftDialog = "@conversation/newbie_scout:s_160", -- Here you go. I need each spot visited and a census taken.
	stopConversation = "true",
	options = {
	}
}
entha_kandela_convo_template:addScreen(accept_mission_one);

great_work = ConvoScreen:new {
	id = "great_work",
	leftDialog = "@conversation/newbie_scout:s_141", -- Great work on that census. The infestations are worse than I thought.
	stopConversation = "false",
	options = {
		{"@conversation/newbie_scout:s_145", "data_analyzed"} -- Thanks I will. 
	}
}
entha_kandela_convo_template:addScreen(great_work);

mission_one_in_progress = ConvoScreen:new {
	id = "mission_one_in_progress",
	leftDialog = "@conversation/newbie_scout:s_151", -- I need that survey done ASAP.
	stopConversation = "false",
	options = {
		{"I don't want this mission any more.", "reset_quest"},
	}
}
entha_kandela_convo_template:addScreen(mission_one_in_progress);

data_analyzed = ConvoScreen:new {
	id = "data_analyzed",
	--leftDialog = "@conversation/newbie_scout:s_149", -- I have analyzed the data from the census that you got me. The first problem we need to tackle is the womp rat infestation.
	customDialogText = "I have analyzed the data from the census that you got me. The first problem we need to tackle is the womp rat infestation. I need you to go and kill at least ten of those creatures.",
	stopConversation = "false",
	options = {
		{"@conversation/newbie_scout:s_86", "accept_mission_two"}, -- Just upload the data to my pad.
		{"@conversation/newbie_scout:s_90", "grunge_fever"}, -- Womp rats?
		{"I don't want this mission any more.", "reset_quest"}--TODO remove
	}
}
entha_kandela_convo_template:addScreen(data_analyzed);

grunge_fever = ConvoScreen:new {
	id = "grunge_fever",
	--leftDialog = "@conversation/newbie_scout:s_92", -- I have womp rats spreading grunge fever. This is not a joke. 
	customDialogText = "I have womp rats spreading grunge fever. This is not a joke. The fever is transmitted by pus from lesions in the rat's skin. You can tell if the rat is infected if the skin is mottled. Kill at least ten, I can take samples. Oh, and be careful: don't touch the pus.",
	stopConversation = "false",
	options = {
		{"@conversation/newbie_scout:s_701", "accept_mission_two"}, -- On my way.
		{"@conversation/newbie_scout:s_137", "good_bye"} -- Pus? Forget it.
	}
}
entha_kandela_convo_template:addScreen(grunge_fever);

task_two_accepted = ConvoScreen:new {
	id = "task_two_accepted",
	leftDialog = "@conversation/newbie_scout:s_704", -- Hurry. You can find them right outside the city.
	stopConversation = "true",
	options = {}
}
entha_kandela_convo_template:addScreen(task_two_accepted);

good_bye = ConvoScreen:new {
	id = "good_bye",
	leftDialog = "@conversation/newbie_scout:s_75", -- All right, then. Good bye.
	stopConversation = "true",
	options = {}
}
entha_kandela_convo_template:addScreen(good_bye);


accept_mission_two = ConvoScreen:new {
	id = "accept_mission_two",
	leftDialog = "@conversation/newbie_scout:s_88", -- Here you go. You can find the womp rats in any of the infested areas.
	stopConversation = "true",
	options = {}
}
entha_kandela_convo_template:addScreen(accept_mission_two);

mission_two_in_progress = ConvoScreen:new {
	id = "mission_two_in_progress",
	--leftDialog = "@conversation/newbie_scout:s_88", -- Here you go. You can find the womp rats in any of the infested areas.
	customDialogText = "I hope you are going to get those Womp Rats for me.",
	stopConversation = "false",
	options = {
		{"I don't want this mission any more.", "reset_quest"}--TODO remove
	}
}
entha_kandela_convo_template:addScreen(mission_two_in_progress);

need_samples = ConvoScreen:new {
	id = "need_samples",
	leftDialog = "@conversation/newbie_scout:s_696", -- The public health department has reported another case of grunge fever. We need those samples fast. 
	stopConversation = "false",
	options = {
		{"@conversation/newbie_scout:s_79", "get_to_it"}--I am working on it.
	}
}
entha_kandela_convo_template:addScreen(need_samples);

get_to_it = ConvoScreen:new {
	id = "get_to_it",
	leftDialog = "@conversation/newbie_scout:s_122", -- Get to it.
	stopConversation = "true",
	options = {}
}
entha_kandela_convo_template:addScreen(get_to_it);


task_three = ConvoScreen:new {
	id = "task_three",
	customDialogText = "Good job with the womp rats. Now I have to tackle the kreetle problem. You interested?",
	stopConversation = "false",
	options = {
		{"Sure, sounds easy.", ""}
	}
}
entha_kandela_convo_template:addScreen(task_three);


mission_two_complete = ConvoScreen:new {
	id = "mission_two_complete",
	customDialogText = "Good job with the womp rats. Now I have to tackle the kreetle problem. You interested?",
	stopConversation = "false",
	options = {
		{"Sure, sounds easy.", "burrowing_kreetles"}
	}
}
entha_kandela_convo_template:addScreen(mission_two_complete);

burrowing_kreetles = ConvoScreen:new {
	id = "burrowing_kreetles",
	customDialogText = "Kreetles are burrowing under the crusty soil all around Mos Eisley. This makes traveling by animal very dangerous, since the weight of a Ronto or an Eopie will break through resulting in the animal snapping its leg. I need  to thin out the kreetles in the area.",
	stopConversation = "false",
	options = {
		{"So what?", "thin_out"}
	}
}
entha_kandela_convo_template:addScreen(burrowing_kreetles);

thin_out = ConvoScreen:new {
	id = "thin_out",
	customDialogText = "Most of the poorer farmers use Rontos to pull their wagons and carts filled with whatever harvest they can gather. If the Rontos break their legs the farmers can't bring the harvest into the city. So the kreetles have to go.",
	stopConversation = "false",
	options = {
		{"OK count me in.", "accept_mission_three"}
	}
}
entha_kandela_convo_template:addScreen(thin_out);

accept_mission_three = ConvoScreen:new {
	id = "accept_mission_three",
	customDialogText = "Kill at least fifteen of them. You can hunt them in the infested areas around the city.",
	stopConversation = "true",
	options = {}
}
entha_kandela_convo_template:addScreen(accept_mission_three);

mission_three_in_progress = ConvoScreen:new {
	id = "mission_three_in_progress",
	customDialogText = "We need to get this done. Kreetles are all around the city outskirts.",
	stopConversation = "true",
	options = {}
}
entha_kandela_convo_template:addScreen(mission_three_in_progress);











quest_complete = ConvoScreen:new {
	id = "quest_complete",
	leftDialog = "@conversation/newbie_scout:s_713", -- Looks like we got everything under control. The mayor really owes you one.
	stopConversation = "true",
	options = {}
}
entha_kandela_convo_template:addScreen(quest_complete);







not_quest_owner = ConvoScreen:new {
	id = "not_quest_owner",
	leftDialog = "@conversation/padawan_kill_sludge_panther_01:s_dfb295ef", -- This is going to get worse before it gets better. Unless we can stop it now.
	stopConversation = "true",
	options = {}
}
entha_kandela_convo_template:addScreen(not_quest_owner);

reset_quest = ConvoScreen:new {
	id = "reset_quest",
	--leftDialog = "@conversation/padawan_kill_sludge_panther_01:s_dfb295ef", -- This is going to get worse before it gets better. Unless we can stop it now.
	customDialogText = "Ok Will reset",
	stopConversation = "true",
	options = {}
}
entha_kandela_convo_template:addScreen(reset_quest);

addConversationTemplate("entha_kandela_convo_template", entha_kandela_convo_template);
