mayor_guhrantt_convo_template = ConvoTemplate:new {
	initialScreen = "",
	templateType = "Lua",
	luaClassHandler = "mayor_guhrantt_conv_handler",
	screens = {}
}

intro = ConvoScreen:new {
	id = "intro",
	leftDialog = "@conversation/mos_eisley_mayor:s_85", -- Welcome to Mos Eisley! I'm Mayor Guh'rantt.
	stopConversation = "false",
	options = {
		{"@conversation/mos_eisley_mayor:s_76", "help_jabba"}, -- I hear you need some help with a debt owed to Jabba.
		{"@conversation/mos_eisley_mayor:s_138", "a_scholar"} -- Tell me about the city's history.
		--{"@conversation/mos_eisley_mayor:s_254", "help_jabba"} -- Do you know where I would go to start a pilot career?
	}
}
mayor_guhrantt_convo_template:addScreen(intro);

help_jabba = ConvoScreen:new {
	id = "help_jabba",
	leftDialog = "@conversation/mos_eisley_mayor:s_80", -- Yes. My...debt. My next payment, a speeder deed, was stolen from me.
	stopConversation = "false",
	options = {
		{"@conversation/mos_eisley_mayor:s_130", "i_see"} -- I see. What would I have to do?
	}
}
mayor_guhrantt_convo_template:addScreen(help_jabba);

i_see = ConvoScreen:new {
	id = "i_see",
	leftDialog = "@conversation/mos_eisley_mayor:s_80", -- Mos Eisley suffers from Tusken Raiders, wild vermin, and menacing hooligans.
	stopConversation = "false",
	options = {
		{"@conversation/mos_eisley_mayor:s_155", "wild_vermin"}, -- Tell me about the wild vermin.
		{"@conversation/mos_eisley_mayor:s_160", "menacing_hooligans"}, -- Tell me about your menacing hooligans.
		{"@conversation/mos_eisley_mayor:s_136", "tusken_raiders"} -- Tell me about the Tusken Raiders.
	}
}
mayor_guhrantt_convo_template:addScreen(i_see);

a_scholar = ConvoScreen:new {
	id = "a_scholar",
	leftDialog = "@conversation/mos_eisley_mayor:s_195", -- Ah, a scholar. So nice to talk with someone else with an interest in history.
	stopConversation = "false",
	options = {
		{"@conversation/mos_eisley_mayor:s_197", "crashed_starship"} -- Really? A crashed starship?
	}
}
mayor_guhrantt_convo_template:addScreen(a_scholar);

crashed_starship = ConvoScreen:new {
	id = "crashed_starship",
	leftDialog = "@conversation/mos_eisley_mayor:s_200", -- Oh yes, the people on the crashed ship formed a community, and after a while the city sprung up around the survivors of that crash.
	stopConversation = "false",
	options = {
		{"@conversation/mos_eisley_mayor:s_206", "thats_alright"}, -- Ok, I don't need to know anymore.
		{"@conversation/mos_eisley_mayor:s_218", "is_more"} -- That's amazing.
	}
}
mayor_guhrantt_convo_template:addScreen(crashed_starship);

thats_alright = ConvoScreen:new {
	id = "thats_alright",
	leftDialog = "@conversation/mos_eisley_mayor:s_214", -- Well, that's all right.
	stopConversation = "true",
	options = {}
}
mayor_guhrantt_convo_template:addScreen(thats_alright);

is_more = ConvoScreen:new {
	id = "is_more",
	leftDialog = "@conversation/mos_eisley_mayor:s_220", -- There is more. There's a lot of history in this city. 
	stopConversation = "false",
	options = {
		{"@conversation/mos_eisley_mayor:s_222", "eisley_rodians"}, -- What do Rodians have to do with Mos Eisley?
		{"@conversation/mos_eisley_mayor:s_235", "other_cities"} -- How are other cities tied to Mos Eisley?
	}
}
mayor_guhrantt_convo_template:addScreen(is_more);

eisley_rodians = ConvoScreen:new {
	id = "eisley_rodians",
	leftDialog = "@conversation/mos_eisley_mayor:s_224", -- Rodian refugees helped construct the very first starports in Mos Eisley. 
	stopConversation = "false",
	options = {
		{"@conversation/mos_eisley_mayor:s_226", "other_cities"}, -- What about the other cities?
		{"@conversation/mos_eisley_mayor:s_230", "thats_alright"}, -- I think I've heard enough.
		{"@conversation/mos_eisley_mayor:s_233", "other_cities"} -- What else can you tell me about the city?
	}
}
mayor_guhrantt_convo_template:addScreen(eisley_rodians);

other_cities = ConvoScreen:new {
	id = "other_cities",
	leftDialog = "@conversation/mos_eisley_mayor:s_242", -- Mos Eisley flourished after building starports as a viable alternative to Anchorhead
	stopConversation = "false",
	options = {
		{"@conversation/mos_eisley_mayor:s_248", "eisley_rodians"}, -- What about the Rodians?
		{"@conversation/mos_eisley_mayor:s_250", "thats_alright"}, -- That's all the history I need.
		{"@conversation/mos_eisley_mayor:s_252", "know_about"} -- Is there more information you could give me?
	}
}
mayor_guhrantt_convo_template:addScreen(other_cities);

know_about = ConvoScreen:new {
	id = "know_about",
	leftDialog = "@conversation/mos_eisley_mayor:s_156", -- What would you like to know about?
	stopConversation = "false",
	options = {
		{"@conversation/mos_eisley_mayor:s_162", "about_jabba"}, -- Tell me about Jabba.
		{"@conversation/mos_eisley_mayor:s_170", "the_cantina"} -- Tell me about the cantina.
	}
}
mayor_guhrantt_convo_template:addScreen(know_about);

about_jabba = ConvoScreen:new {
	id = "about_jabba",
	leftDialog = "@conversation/mos_eisley_mayor:s_107", -- Of course. He rules over most of Tatooine from his 'liberated' temple in the southwest.
	stopConversation = "false",
	options = {
		{"@conversation/mos_eisley_mayor:s_109", "workfor_jabba"}, -- Do a lot of people work for Jabba?
		{"@conversation/mos_eisley_mayor:s_125", "lib_temple"} -- What do you mean by 'liberated' temple?
	}
}
mayor_guhrantt_convo_template:addScreen(about_jabba);

workfor_jabba = ConvoScreen:new {
	id = "workfor_jabba",
	leftDialog = "@conversation/mos_eisley_mayor:s_111", -- Oh, yes. He's one of the biggest business owners on Tatooine.
	stopConversation = "false",
	options = {
		{"@conversation/mos_eisley_mayor:s_113", "illegal"}, -- Illegal?
		{"@conversation/mos_eisley_mayor:s_119", "employee"} -- Could I get a job with Jabba?
	}
}
mayor_guhrantt_convo_template:addScreen(workfor_jabba);

illegal = ConvoScreen:new {
	id = "illegal",
	leftDialog = "@conversation/mos_eisley_mayor:s_115", -- You could say that. The Imperials certainly don't like the way he does business
	stopConversation = "false",
	options = {
		{"@conversation/mos_eisley_mayor:s_117", "know_about"} -- Anything else?
	}
}
mayor_guhrantt_convo_template:addScreen(illegal);

lib_temple = ConvoScreen:new {
	id = "lib_temple",
	leftDialog = "@conversation/mos_eisley_mayor:s_127", -- The monastery that Jabba now claims as his headquarters once belonged to the Dim-U monks of Tatooine.
	stopConversation = "false",
	options = {
		{"@conversation/mos_eisley_mayor:s_129", "bizarre"}, -- That's a little bizarre isn't it?
		{"@conversation/mos_eisley_mayor:s_133", "thats_alright"} -- What happened to the monks?
	}
}
mayor_guhrantt_convo_template:addScreen(lib_temple);

bizarre = ConvoScreen:new {
	id = "bizarre",
	leftDialog = "@conversation/mos_eisley_mayor:s_115", -- If you ask me it's very bizarre. And I've seen a lot of interesting things going through the space port here in Mos Eisley.
	stopConversation = "false",
	options = {
		{"@conversation/mos_eisley_mayor:s_137", "know_about"} -- Can you talk a bit more?
	}
}
mayor_guhrantt_convo_template:addScreen(bizarre);

employee = ConvoScreen:new {
	id = "employee",
	leftDialog = "@conversation/mos_eisley_mayor:s_121", -- Well, you could, but I don't know if I could recommend it. I've heard about some pretty bad things that happen to his employees.
	stopConversation = "false",
	options = {
		{"@conversation/mos_eisley_mayor:s_123", "know_about"} -- What else do you know?
	}
}
mayor_guhrantt_convo_template:addScreen(employee);

the_cantina = ConvoScreen:new {
	id = "the_cantina",
	leftDialog = "@conversation/mos_eisley_mayor:s_141", -- The cantina? Well, it's not really dangerous.
	stopConversation = "false",
	options = {
		{"@conversation/mos_eisley_mayor:s_143", "jedi_knight"}, -- How do you lose an arm in a barfight?
		{"@conversation/mos_eisley_mayor:s_177", "thats_alright"} -- Who's Wuher?
	}
}
mayor_guhrantt_convo_template:addScreen(the_cantina);

anyting_else = ConvoScreen:new {
	id = "anyting_else",
	leftDialog = "@conversation/mos_eisley_mayor:s_214", -- Well, that's all right.
	stopConversation = "true",
	options = {}
}
mayor_guhrantt_convo_template:addScreen(anyting_else);

jedi_knight = ConvoScreen:new {
	id = "jedi_knight",
	leftDialog = "@conversation/mos_eisley_mayor:s_146", -- Well, I've heard rumors that it was done by a Jedi Knight
	stopConversation = "false",
	options = {
		{"@conversation/mos_eisley_mayor:s_153", "know_about"} -- What else can you tell me?
	}
}
mayor_guhrantt_convo_template:addScreen(jedi_knight);

wild_vermin = ConvoScreen:new {
	id = "wild_vermin",
	leftDialog = "@conversation/mos_eisley_mayor:s_157", -- Entha Kandela has been clamoring that she needs some help controlling the population of various vermin on the outskirts of Mos Eisley.
	stopConversation = "false",
	options = {
		{"@conversation/mos_eisley_mayor:s_164", "accept_task_one"}, -- I'll help her.
		{"@conversation/mos_eisley_mayor:s_201", "something_different"} -- Could I ask about something different?
	}
}
mayor_guhrantt_convo_template:addScreen(wild_vermin);

something_different = ConvoScreen:new {
	id = "something_different",
	leftDialog = "@conversation/mos_eisley_mayor:s_212", -- Absolutely, what would you like to know?
	stopConversation = "false",
	options = {
		{"@conversation/mos_eisley_mayor:s_155", "wild_vermin"}, -- Tell me about the wild vermin.
		{"@conversation/mos_eisley_mayor:s_160", "menacing_hooligans"}, -- Tell me about your menacing hooligans.
		{"@conversation/mos_eisley_mayor:s_136", "tusken_raiders"} -- Tell me about the Tusken Raiders.
	}
}
mayor_guhrantt_convo_template:addScreen(something_different);

menacing_hooligans = ConvoScreen:new {
	id = "menacing_hooligans",
	leftDialog = "@conversation/mos_eisley_mayor:s_163", -- There is a constant stream of low-lifes and hoodlums who prey on the city of Mos Eisley.
	stopConversation = "false",
	options = {
		{"@conversation/mos_eisley_mayor:s_167", "thank_you"}, -- Gladly. I'm on my way.
		{"@conversation/mos_eisley_mayor:s_169", "combat_expert"}, -- Who is Peawp R'dawc?
		{"@conversation/mos_eisley_mayor:s_201", "something_different"} -- Could I ask about something different?
	}
}
mayor_guhrantt_convo_template:addScreen(menacing_hooligans);

tusken_raiders = ConvoScreen:new {
	id = "tusken_raiders",
	leftDialog = "@conversation/mos_eisley_mayor:s_140", -- Tusken Raiders have recently been attacking the city in fairly regular raids. Causing a good bit of ruckus and mayhem.
	stopConversation = "false",
	options = {
		{"@conversation/mos_eisley_mayor:s_144", "excellent_question"} -- Why are the Tusken Raiders attacking Mos Eisley?
	}
}
mayor_guhrantt_convo_template:addScreen(tusken_raiders);

excellent_question = ConvoScreen:new {
	id = "excellent_question",
	leftDialog = "@conversation/mos_eisley_mayor:s_147", -- An excellent question, but I don't know the answer.
	stopConversation = "false",
	options = {
		{"@conversation/mos_eisley_mayor:s_149", "thank_you_two"}, -- I'm on my way.
		{"@conversation/mos_eisley_mayor:s_201", "something_different"} -- Could I ask about something different?
	}
}
mayor_guhrantt_convo_template:addScreen(excellent_question);

accept_task_one = ConvoScreen:new {
	id = "accept_task_one",
	leftDialog = "@conversation/mos_eisley_mayor:s_165", -- Good.
	stopConversation = "true",
	options = {}
}
mayor_guhrantt_convo_template:addScreen(accept_task_one);

thank_you = ConvoScreen:new {
	id = "thank_you",
	leftDialog = "@conversation/mos_eisley_mayor:s_165", -- Good.
	stopConversation = "true",
	options = {}
}
mayor_guhrantt_convo_template:addScreen(thank_you);

combat_expert = ConvoScreen:new {
	id = "combat_expert",
	leftDialog = "@conversation/mos_eisley_mayor:s_171", -- She is a combat expert who is leading the endeavor to rid Mos Eisley of these bothersome hoodlums.
	stopConversation = "false",
	options = {
		{"@conversation/mos_eisley_mayor:s_149", "good"}, -- I'm on my way.
		{"@conversation/mos_eisley_mayor:s_201", "something_different"} -- Could I ask about something different?
	}
}
mayor_guhrantt_convo_template:addScreen(combat_expert);

thank_you_two = ConvoScreen:new {
	id = "thank_you_two",
	leftDialog = "@conversation/mos_eisley_mayor:s_165", -- Good.
	stopConversation = "true",
	options = {}
}
mayor_guhrantt_convo_template:addScreen(thank_you_two);

completed_info = ConvoScreen:new {
	id = "completed_info",
	leftDialog = "@conversation/mos_eisley_mayor:s_85", -- Welcome to Mos Eisley! I'm Mayor Guh'rantt.
	stopConversation = "false",
	options = {
		{"@conversation/mos_eisley_mayor:s_138", "a_scholar"}, -- Tell me about the city's history.
		--{"@conversation/mos_eisley_mayor:s_254", "help_jabba"} -- Do you know where I would go to start a pilot career?
		{"Reset quest", "reset_quest"}
	}
}
mayor_guhrantt_convo_template:addScreen(completed_info);











quest_completed = ConvoScreen:new {
	id = "quest_completed",
	leftDialog = "",
	customDialogText = "Well done, that's got rid of them.",
	stopConversation = "false",
	options = {
		{"Come back anytime if you want to help some more.", "reset_quest"}
	}
}
mayor_guhrantt_convo_template:addScreen(quest_completed);

not_quest_owner = ConvoScreen:new {
	id = "not_quest_owner",
	leftDialog = "@conversation/padawan_kill_sludge_panther_01:s_dfb295ef", -- This is going to get worse before it gets better. Unless we can stop it now.
	stopConversation = "true",
	options = {}
}
mayor_guhrantt_convo_template:addScreen(not_quest_owner);

reset_quest = ConvoScreen:new {
	id = "reset_quest",
	--leftDialog = "@conversation/padawan_kill_sludge_panther_01:s_dfb295ef", -- This is going to get worse before it gets better. Unless we can stop it now.
	customDialogText = "Ok Will reset",
	stopConversation = "true",
	options = {}
}
mayor_guhrantt_convo_template:addScreen(reset_quest);

addConversationTemplate("mayor_guhrantt_convo_template", mayor_guhrantt_convo_template);
