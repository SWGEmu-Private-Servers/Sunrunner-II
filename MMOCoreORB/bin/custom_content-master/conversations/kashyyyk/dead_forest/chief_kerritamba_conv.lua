chiefKerritambaConvoTemplate = ConvoTemplate:new {
	initialScreen = "first_screen",
	templateType = "Lua",
	luaClassHandler = "chiefKerritambaConvoHandler",
	screens = {}
}

first_screen = ConvoScreen:new {
	id = "first_screen",
	leftDialog = "@conversation/ep3_forest_kerritamba:s_837", -- [Chief Kerritamba nods.] Welcome to our humble village, friend.
	stopConversation = "false",
	options = {
				{"@conversation/ep3_forest_kerritamba:s_839", "untrusting_people"}, -- Well...
	}
}
chiefKerritambaConvoTemplate:addScreen(first_screen);

untrusting_people = ConvoScreen:new {
	id = "untrusting_people",
	leftDialog = "@conversation/ep3_forest_kerritamba:s_841", -- Yes, I know. Unfortunately, we are a skeptical, untrusting people
	stopConversation = "false",
	options = {
				{"@conversation/ep3_forest_kerritamba:s_843", "our_forest"}, -- Something ails you. Might I ask what it is?
	}
}
chiefKerritambaConvoTemplate:addScreen(untrusting_people);

our_forest = ConvoScreen:new {
	id = "our_forest",
	leftDialog = "@conversation/ep3_forest_kerritamba:s_845", -- Our forest... [Chief Kerritamba closes his eyes.] It's dying.
	stopConversation = "false",
	options = {
				{"@conversation/ep3_forest_kerritamba:s_847", "no_real_answers"}, -- What's killing the forest?
	}
}
chiefKerritambaConvoTemplate:addScreen(our_forest);

no_real_answers = ConvoScreen:new {
	id = "no_real_answers",
	leftDialog = "@conversation/ep3_forest_kerritamba:s_849", -- We have our suspicions, but no real answers.
	stopConversation = "false",
	options = {
				{"@conversation/ep3_forest_kerritamba:s_851", "source_of_the_problem"}, -- Can we help the forest in some way?
				{"@conversation/ep3_forest_kerritamba:s_867", "painful_event"}, -- Why were the Myyydril banished?
	}
}
chiefKerritambaConvoTemplate:addScreen(no_real_answers);

painful_event = ConvoScreen:new {
	id = "painful_event",
	leftDialog = "@conversation/ep3_forest_kerritamba:s_869", -- It is a painful event to remember. [The chief begins sadly.] It was long ago.
	stopConversation = "false",
	options = {
				{"@conversation/ep3_forest_kerritamba:s_871", "help_hosdra"}, -- That's horrible. Did the Myyydril help Hosdra?
	}
}
chiefKerritambaConvoTemplate:addScreen(painful_event);

help_hosdra = ConvoScreen:new {
	id = "help_hosdra",
	leftDialog = "@conversation/ep3_forest_kerritamba:s_873", -- No. However, it was the consensus of the people of Kerritamba to oust them for Hosdra's horrible deed.
	stopConversation = "false",
	options = {
				{"@conversation/ep3_forest_kerritamba:s_875", "root_problem"}, -- The forest...
	}
}
chiefKerritambaConvoTemplate:addScreen(help_hosdra);

root_problem = ConvoScreen:new {
	id = "root_problem",
	leftDialog = "@conversation/ep3_forest_kerritamba:s_877", -- Indeed. [Chief Kerritamba lowers his head.] We must find the root of the problem
	stopConversation = "false",
	options = {
				{"@conversation/ep3_forest_kerritamba:s_879", "source_of_the_problem"}, -- Can we help the forest in some way?
	}
}
chiefKerritambaConvoTemplate:addScreen(root_problem);

source_of_the_problem = ConvoScreen:new {
	id = "source_of_the_problem",
	leftDialog = "@conversation/ep3_forest_kerritamba:s_881", -- Perhaps. But we must try and find the source of the problem.
	stopConversation = "false",
	options = {
				{"@conversation/ep3_forest_kerritamba:s_883", "need_samples"}, -- I agree. So, what's first?
	}
}
chiefKerritambaConvoTemplate:addScreen(source_of_the_problem);

need_samples = ConvoScreen:new {
	id = "need_samples",
	leftDialog = "@conversation/ep3_forest_kerritamba:s_885", -- I need samples. There are unspeakable creatures living in the Myyydril Caverns
	stopConversation = "false",
	options = {
				{"@conversation/ep3_forest_kerritamba:s_887", "accept_mission_one"}, -- Yes, I will. You can count on me.
				{"@conversation/ep3_forest_kerritamba:s_891", "exit_one"}, -- Perhaps another time.
	}
}
chiefKerritambaConvoTemplate:addScreen(need_samples);

exit_one = ConvoScreen:new {
	id = "exit_one",
	leftDialog = "@conversation/ep3_forest_kerritamba:s_893", -- [Chief Kerritamba nods.] I understand, my friend. Please enjoy the rest our village has to offer.
	stopConversation = "true",
	options = {}
}
chiefKerritambaConvoTemplate:addScreen(exit_one);

accept_mission_one = ConvoScreen:new {
	id = "accept_mission_one",
	leftDialog = "@conversation/ep3_forest_kerritamba:s_889", -- You make an old soul very happy, my friend. The Myyydril Caverns is to the north across the river.
	stopConversation = "true",
	options = {}
}
chiefKerritambaConvoTemplate:addScreen(accept_mission_one);

good_news = ConvoScreen:new {
	id = "good_news",
	leftDialog = "@conversation/ep3_forest_kerritamba:s_821", -- What have you found, my friend? I hope you bring good news.
	stopConversation = "false",
	options = {
				{"@conversation/ep3_forest_kerritamba:s_823", ""}, -- I was able to find the samples.
	}
}
chiefKerritambaConvoTemplate:addScreen(good_news);

good_news = ConvoScreen:new {
	id = "good_news",
	leftDialog = "@conversation/ep3_forest_kerritamba:s_825", -- Good, good. [Chief Kerritamba takes the samples.]
	stopConversation = "false",
	options = {
				{"@conversation/ep3_forest_kerritamba:s_827", "complete_mission_one"}, -- I hope it goes well and that we find the cure soon.
	}
}
chiefKerritambaConvoTemplate:addScreen(good_news);

complete_mission_one = ConvoScreen:new {
	id = "complete_mission_one",
	leftDialog = "@conversation/ep3_forest_kerritamba:s_829", -- I hope so too. Come back in a few moments.
	stopConversation = "true",
	options = {}
}
chiefKerritambaConvoTemplate:addScreen(complete_mission_one);

cure_in_mind = ConvoScreen:new {
	id = "cure_in_mind",
	leftDialog = "@conversation/ep3_forest_kerritamba:s_803", -- We may have a cure in mind, my friend. [Chief Kerritamba nods his head low in reverence.]
	stopConversation = "false",
	options = {
				{"@conversation/ep3_forest_kerritamba:s_805", "hightened_activity"}, -- What did you find out?
	}
}
chiefKerritambaConvoTemplate:addScreen(cure_in_mind);

hightened_activity = ConvoScreen:new {
	id = "hightened_activity",
	leftDialog = "@conversation/ep3_forest_kerritamba:s_807", -- It seems that with the hightened activity within the Myyydril Caverns
	stopConversation = "false",
	options = {
				{"@conversation/ep3_forest_kerritamba:s_809", ""}, -- What are the elements? Where can they be found?
	}
}
chiefKerritambaConvoTemplate:addScreen(hightened_activity);

need_samples = ConvoScreen:new {
	id = "need_samples",
	leftDialog = "@conversation/ep3_forest_kerritamba:s_811", -- I cannot go into the details, only tell you what I need from the surrounding forest.
	stopConversation = "false",
	options = {
				{"@conversation/ep3_forest_kerritamba:s_813", "accept_mission_two"}, -- I'll do it.
				{"@conversation/ep3_forest_kerritamba:s_817", "exit_two"}, -- I'll have to complete such a task later.
	}
}
chiefKerritambaConvoTemplate:addScreen(need_samples);

exit_two = ConvoScreen:new {
	id = "exit_two",
	leftDialog = "@conversation/ep3_forest_kerritamba:s_819", -- I understand.
	stopConversation = "true",
	options = {}
}
chiefKerritambaConvoTemplate:addScreen(exit_two);

accept_mission_two = ConvoScreen:new {
	id = "accept_mission_two",
	leftDialog = "@conversation/ep3_forest_kerritamba:s_815", -- My people and I thank you. I only hope you return quickly so that we may cure our beloved forest in due time.
	stopConversation = "true",
	options = {}
}
chiefKerritambaConvoTemplate:addScreen(accept_mission_two);

deep_thought = ConvoScreen:new {--completes mission two here.
	id = "deep_thought",
	leftDialog = "@conversation/ep3_forest_kerritamba:s_787", -- [Chief Kerritamba seems deep in thought.]
	stopConversation = "false",
	options = {
				{"@conversation/ep3_forest_kerritamba:s_789", "hope_it_works"}, -- Chief Kerritamba? I have the ingredients for your cure.
	}
}
chiefKerritambaConvoTemplate:addScreen(deep_thought);

hope_it_works = ConvoScreen:new {
	id = "hope_it_works",
	leftDialog = "@conversation/ep3_forest_kerritamba:s_791", -- Ah, perfect. Now... let us hope it works.
	stopConversation = "false",
	options = {
				{"@conversation/ep3_forest_kerritamba:s_793", "exit_three"}, -- The Great Tree?
	}
}
chiefKerritambaConvoTemplate:addScreen(hope_it_works);

exit_three = ConvoScreen:new {
	id = "exit_three",
	leftDialog = "@conversation/ep3_forest_kerritamba:s_795", -- I will explain to you the history of our Great Tree in due time.
	stopConversation = "true",
	options = {}
}
chiefKerritambaConvoTemplate:addScreen(exit_three);

need_samples = ConvoScreen:new {
	id = "need_samples",
	leftDialog = "@conversation/ep3_forest_kerritamba:s_765", -- Finally... [Chief Kerritamba opens his hands. You can see a mystical vial.]
	stopConversation = "false",
	options = {
				{"@conversation/ep3_forest_kerritamba:s_767", "accept_mission_three"}, -- I hope it works. I'll give it to the Great Tree.
				{"@conversation/ep3_forest_kerritamba:s_771", "darkest_hour"}, -- What's the story behind the Great Tree?
	}
}
chiefKerritambaConvoTemplate:addScreen(need_samples);

darkest_hour = ConvoScreen:new {
	id = "darkest_hour",
	leftDialog = "@conversation/ep3_forest_kerritamba:s_773", -- The Great Tree provided us with great shelter and lifted our hopes and spirits during our darkest hour
	stopConversation = "false",
	options = {
				{"@conversation/ep3_forest_kerritamba:s_779", "give_this"}, -- The cure...
	}
}
chiefKerritambaConvoTemplate:addScreen(darkest_hour);

give_this = ConvoScreen:new {
	id = "give_this",
	leftDialog = "@conversation/ep3_forest_kerritamba:s_781", -- Yes, yes of course! Please, give this to the Great Tree. Let us hope it works.
	stopConversation = "false",
	options = {
				{"@conversation/ep3_forest_kerritamba:s_779", "accept_mission_three"}, -- I'll do it.
	}
}
chiefKerritambaConvoTemplate:addScreen(give_this);

accept_mission_three = ConvoScreen:new {
	id = "accept_mission_three",
	leftDialog = "@conversation/ep3_forest_kerritamba:s_765", -- Finally... [Chief Kerritamba opens his hands. You can see a mystical vial.]
	stopConversation = "true",
	options = {}
}
chiefKerritambaConvoTemplate:addScreen(accept_mission_three);

mission_three_in_progress = ConvoScreen:new {
	id = "mission_three_in_progress",
	leftDialog = "@conversation/ep3_forest_kerritamba:s_755", -- I grow more and more concerned. Has the Great Tree been cured, my friend?
	stopConversation = "false",
	options = {
				{"@conversation/ep3_forest_kerritamba:s_757", "grow_anxious"}, -- Not yet. I'm still working on it.
	}
}
chiefKerritambaConvoTemplate:addScreen(mission_three_in_progress);

grow_anxious = ConvoScreen:new {
	id = "grow_anxious",
	leftDialog = "@conversation/ep3_forest_kerritamba:s_759", -- We need to hurry. My people grow anxious to hear the news. Cure the Great Tree and come back a hero.
	stopConversation = "true",
	options = {}
}
chiefKerritambaConvoTemplate:addScreen(grow_anxious);

my_friend = ConvoScreen:new {
	id = "my_friend",
	leftDialog = "@conversation/ep3_forest_kerritamba:s_749", -- My friend.. [Chief Kerritamba smiles kindly.] You cured the Great Tree.
	stopConversation = "false",
	options = {
				{"@conversation/ep3_forest_kerritamba:s_751", "mission_three_complete"}, -- I was glad to be of help.
	}
}
chiefKerritambaConvoTemplate:addScreen(my_friend);

mission_three_complete = ConvoScreen:new {
	id = "growmission_three_complete_anxious",
	leftDialog = "@conversation/ep3_forest_kerritamba:s_753", -- You did more than just help. You saved our forest! You're a hero in our eyes now.
	stopConversation = "true",
	options = {}
}
chiefKerritambaConvoTemplate:addScreen(mission_three_complete);

mission_four_start = ConvoScreen:new {
	id = "mission_four_start",
	leftDialog = "@conversation/ep3_forest_kerritamba:s_731", -- The Great Tree has been healed, but... another threat looms on our horizon.
	stopConversation = "false",
	options = {
				{"@conversation/ep3_forest_kerritamba:s_733", "the_sayormi"}, -- What is it?
	}
}
chiefKerritambaConvoTemplate:addScreen(mission_four_start);

the_sayormi = ConvoScreen:new {
	id = "the_sayormi",
	leftDialog = "@conversation/ep3_forest_kerritamba:s_735", -- The Sayormi. Dedicated to the mortal ties of death and decay, the Sayormi try desperately to destroy our lush, green forests with their dark rituals.
	stopConversation = "false",
	options = {
				{"@conversation/ep3_forest_kerritamba:s_737", ""}, -- How am I able to help you?
	}
}
chiefKerritambaConvoTemplate:addScreen(the_sayormi);

need_samples = ConvoScreen:new {
	id = "need_samples",
	leftDialog = "@conversation/ep3_forest_kerritamba:s_739", -- The curing of the Great Tree has stirred the Sayormi.
	stopConversation = "false",
	options = {
				{"@conversation/ep3_forest_kerritamba:s_741", "accept_mission_four"}, -- You have my word, Chief Kerritamba.
				{"@conversation/ep3_forest_kerritamba:s_745", "exit_four"}, -- I.. can't at this time.
	}
}
chiefKerritambaConvoTemplate:addScreen(need_samples);

exit_four = ConvoScreen:new {
	id = "exit_four",
	leftDialog = "@conversation/ep3_forest_kerritamba:s_795", -- I will explain to you the history of our Great Tree in due time.
	stopConversation = "true",
	options = {}
}
chiefKerritambaConvoTemplate:addScreen(exit_four);

accept_mission_four = ConvoScreen:new {
	id = "accept_mission_four",
	leftDialog = "@conversation/ep3_forest_kerritamba:s_765", -- Finally... [Chief Kerritamba opens his hands. You can see a mystical vial.]
	stopConversation = "true",
	options = {}
}
chiefKerritambaConvoTemplate:addScreen(accept_mission_four);

mission_four_in_progress = ConvoScreen:new {
	id = "mission_four_in_progress",
	leftDialog = "@conversation/ep3_forest_kerritamba:s_725", -- The Sayormi still stalk the forests in large numbers. You have not completed your duty. Am I correct?
	stopConversation = "false",
	options = {
				{"@conversation/ep3_forest_kerritamba:s_727", "end_times"}, -- I'm still working on the issue.
	}
}
chiefKerritambaConvoTemplate:addScreen(mission_four_in_progress);

end_times = ConvoScreen:new {
	id = "end_times",
	leftDialog = "@conversation/ep3_forest_kerritamba:s_729", -- Good. Hurry, my friend. The end times draw near.
	stopConversation = "true",
	options = {}
}
chiefKerritambaConvoTemplate:addScreen(end_times);

returned_safely = ConvoScreen:new {
	id = "returned_safely",
	leftDialog = "@conversation/ep3_forest_kerritamba:s_715", -- I see you have returned safely. What news do you have from the Dead Forest?
	stopConversation = "false",
	options = {
				{"@conversation/ep3_forest_kerritamba:s_717", "complete_mission_four"}, -- The Sayormi threat has been taken care of.
	}
}
chiefKerritambaConvoTemplate:addScreen(returned_safely);

complete_mission_four = ConvoScreen:new {
	id = "complete_mission_four",
	leftDialog = "@conversation/ep3_forest_kerritamba:s_719", -- Mmm... [Chief Kerritamba nods.] Good.
	stopConversation = "false",
	options = {
				{"@conversation/ep3_forest_kerritamba:s_721", "end_four"}, -- Thank you.
	}
}
chiefKerritambaConvoTemplate:addScreen(complete_mission_four);

end_four = ConvoScreen:new {
	id = "end_four",
	leftDialog = "@conversation/ep3_forest_kerritamba:s_723", -- [Chief Kerritamba nods and begins to hum an ancient tune.]
	stopConversation = "true",
	options = {}
}
chiefKerritambaConvoTemplate:addScreen(end_four);

start_mission_five = ConvoScreen:new {
	id = "start_mission_five",
	leftDialog = "@conversation/ep3_forest_kerritamba:s_689", -- Let us continue... [Chief Kerritamba nods.] Now that their defenses have weakened,
	stopConversation = "false",
	options = {
				{"@conversation/ep3_forest_kerritamba:s_691", "cyrans_the_unfeeling"}, -- And the second?
	}
}
chiefKerritambaConvoTemplate:addScreen(start_mission_five);

cyrans_the_unfeeling = ConvoScreen:new {
	id = "cyrans_the_unfeeling",
	leftDialog = "@conversation/ep3_forest_kerritamba:s_693", -- Cyrans the Unfeeling. [Chief Kerritamba's eyes flicker with memories of the past.]
	stopConversation = "false",
	options = {
				{"@conversation/ep3_forest_kerritamba:s_695", "young_warrior"}, -- What's the history between you two?
	}
}
chiefKerritambaConvoTemplate:addScreen(cyrans_the_unfeeling);

young_warrior = ConvoScreen:new {
	id = "young_warrior",
	leftDialog = "@conversation/ep3_forest_kerritamba:s_697", -- [Chief Kerritamba sterns his jaw.] At the time, I was a young warrior.
	stopConversation = "false",
	options = {
				{"@conversation/ep3_forest_kerritamba:s_699", "young_warrior"}, -- [You nod.]
	}
}
chiefKerritambaConvoTemplate:addScreen(young_warrior);

young_warrior = ConvoScreen:new {
	id = "young_warrior",
	leftDialog = "@conversation/ep3_forest_kerritamba:s_697", -- [Chief Kerritamba sterns his jaw.] At the time, I was a young warrior.
	stopConversation = "false",
	options = {
				{"@conversation/ep3_forest_kerritamba:s_699", "people_have_thrived"}, -- [You nod.]
	}
}
chiefKerritambaConvoTemplate:addScreen(young_warrior);

people_have_thrived = ConvoScreen:new {
	id = "people_have_thrived",
	leftDialog = "@conversation/ep3_forest_kerritamba:s_701", -- Since then, our people have thrived.
	stopConversation = "false",
	options = {
				{"@conversation/ep3_forest_kerritamba:s_703", "correct"}, -- Then, my task is to defeat Cyrans the Unfeeling and his Queen.
	}
}
chiefKerritambaConvoTemplate:addScreen(people_have_thrived);

correct = ConvoScreen:new {
	id = "correct",
	leftDialog = "@conversation/ep3_forest_kerritamba:s_705", -- You are correct. [Chief Kerritamba points east.] 
	stopConversation = "false",
	options = {
				{"@conversation/ep3_forest_kerritamba:s_707", "accept_mission_five"}, -- I will do so.
				{"@conversation/ep3_forest_kerritamba:s_745", "exit_five"}, -- Perhaps I'll take them on another time.
	}
}
chiefKerritambaConvoTemplate:addScreen(correct);

exit_five = ConvoScreen:new {
	id = "exit_five",
	leftDialog = "@conversation/ep3_forest_kerritamba:s_713", -- May that time be soon and not too late.
	stopConversation = "true",
	options = {}
}
chiefKerritambaConvoTemplate:addScreen(exit_five);

accept_mission_five = ConvoScreen:new {
	id = "accept_mission_five",
	leftDialog = "@conversation/ep3_forest_kerritamba:s_709", -- You make me proud. May safety be with you.
	stopConversation = "true",
	options = {}
}
chiefKerritambaConvoTemplate:addScreen(accept_mission_five);

mission_five_in_progress = ConvoScreen:new {
	id = "mission_five_in_progress",
	leftDialog = "@conversation/ep3_forest_kerritamba:s_683", -- Cyrans and his Queen are still roaming the Dead Forest. I need to know why you are here.
	stopConversation = "false",
	options = {
				{"@conversation/ep3_forest_kerritamba:s_685", "mission_five_prog"}, -- I haven't been able to defeat them. I'm still trying.
	}
}
chiefKerritambaConvoTemplate:addScreen(mission_five_in_progress);

mission_five_prog = ConvoScreen:new {
	id = "mission_five_prog",
	leftDialog = "@conversation/ep3_forest_kerritamba:s_687", -- Continue your task. I hope good fortune finds you and aids you.
	stopConversation = "true",
	options = {}
}
chiefKerritambaConvoTemplate:addScreen(mission_five_prog);

mission_five_cont = ConvoScreen:new {
	id = "mission_five_cont",
	leftDialog = "@conversation/ep3_forest_kerritamba:s_673", -- Please tell me you were successful in your journey.
	stopConversation = "false",
	options = {
				{"@conversation/ep3_forest_kerritamba:s_675", "complete_mission_five"}, -- Cyrans and his Queen have been defeated.
	}
}
chiefKerritambaConvoTemplate:addScreen(mission_five_cont);

complete_mission_five = ConvoScreen:new {
	id = "complete_mission_five",
	leftDialog = "@conversation/ep3_forest_kerritamba:s_677", -- Then our forests can rest once more... [Chief Kerritamba nods his head in reverence.]
	stopConversation = "false",
	options = {
				{"@conversation/ep3_forest_kerritamba:s_679", "mission_five_end"}, -- I was glad to be of help.
	}
}
chiefKerritambaConvoTemplate:addScreen(complete_mission_five);

mission_five_end = ConvoScreen:new {
	id = "mission_five_end",
	leftDialog = "@conversation/ep3_forest_kerritamba:s_681", -- Now, I too can finally rest. [Chief Kerritamba bows his head.]
	stopConversation = "true",
	options = {}
}
chiefKerritambaConvoTemplate:addScreen(mission_five_end);

start_mission_six = ConvoScreen:new {
	id = "start_mission_six",
	leftDialog = "@conversation/ep3_forest_kerritamba:s_647", -- I have... some unfortunate news, my friend. [Chief Kerritamba begins, sadly.]
	stopConversation = "false",
	options = {
				{"@conversation/ep3_forest_kerritamba:s_649", "entirely_my_fault"}, -- What is it? Sayormi? Myyydril Caverns?
	}
}
chiefKerritambaConvoTemplate:addScreen(start_mission_six);

entirely_my_fault = ConvoScreen:new {
	id = "entirely_my_fault",
	leftDialog = "@conversation/ep3_forest_kerritamba:s_651", -- No, no. It is entirely my fault that this has come up
	stopConversation = "false",
	options = {
				{"@conversation/ep3_forest_kerritamba:s_653", "arena_champion"}, -- I don't understand.
	}
}
chiefKerritambaConvoTemplate:addScreen(entirely_my_fault);

arena_champion = ConvoScreen:new {
	id = "arena_champion",
	leftDialog = "@conversation/ep3_forest_kerritamba:s_655", -- [Chief Kerritamba sighs.] It is the honor of the Arena Champion to perform tasks for his people and his Chief.
	stopConversation = "false",
	options = {
				{"@conversation/ep3_forest_kerritamba:s_657", "dire_situation"}, -- But... I didn't mean to.
	}
}
chiefKerritambaConvoTemplate:addScreen(arena_champion);

dire_situation = ConvoScreen:new {
	id = "dire_situation",
	leftDialog = "@conversation/ep3_forest_kerritamba:s_659", -- I know. It is I who has placed you in this dire situation. 
	stopConversation = "false",
	options = {
				{"@conversation/ep3_forest_kerritamba:s_661", "accept_mission_six"}, -- I see. I'll do the best I can.
				{"@conversation/ep3_forest_kerritamba:s_669", "exit_six"}, -- I can't do this right now.
	}
}
chiefKerritambaConvoTemplate:addScreen(dire_situation);

exit_six = ConvoScreen:new {
	id = "exit_six",
	leftDialog = "@conversation/ep3_forest_kerritamba:s_671", -- I understand. It is a hard decision.
	stopConversation = "true",
	options = {}
}
chiefKerritambaConvoTemplate:addScreen(exit_six);

accept_mission_six = ConvoScreen:new {
	id = "accept_mission_six",
	leftDialog = "@conversation/ep3_forest_kerritamba:s_663", -- It is all I can expect. However, it is not beyond your ability to bring along allies. 
	stopConversation = "false",
	options = {
				{"@conversation/ep3_forest_kerritamba:s_665", "accept_mission_six_end"}, -- I understand. Thank you for fore-warning me.
	}
}
chiefKerritambaConvoTemplate:addScreen(accept_mission_six);

accept_mission_six_end = ConvoScreen:new {
	id = "accept_mission_six_end",
	leftDialog = "@conversation/ep3_forest_kerritamba:s_645", -- You must speak with Wirartu at the Arena, my friend. Your reputation and honor have been challenged.
	stopConversation = "true",
	options = {}
}
chiefKerritambaConvoTemplate:addScreen(accept_mission_six_end);

addConversationTemplate("chiefKerritambaConvoTemplate", chiefKerritambaConvoTemplate);
