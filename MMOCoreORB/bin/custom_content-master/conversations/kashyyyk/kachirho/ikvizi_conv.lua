ikviziConvoTemplate = ConvoTemplate:new {
	initialScreen = "",
	templateType = "Lua",
	luaClassHandler = "ikvizi_conv_handler",
	screens = {}
}

first_screen = ConvoScreen:new {
	id = "first_screen",
	leftDialog = "@conversation/ep3_clone_relics_trapped_geonosian:s_1434", -- Please...I need your help...
	stopConversation = "false",
	options = {
		{"@conversation/ep3_clone_relics_trapped_geonosian:s_1436", "not_criminal"},--I don't have a habit of assisting criminals.
		{"@conversation/ep3_clone_relics_trapped_geonosian:s_1450", "long_story"},--Why are you imprisoned?
		{"@conversation/ep3_clone_relics_trapped_geonosian:s_1520", "exit_one"}--I sure am glad I'm not you. Have a good one.
	}
}
ikviziConvoTemplate:addScreen(first_screen);

exit_one = ConvoScreen:new {
	id = "exit_one",
	leftDialog = "@conversation/ep3_clone_relics_trapped_geonosian:s_1522",--You heartless scum, I hope you'll get what you deserve one of these days!
	stopConversation = "true",
	options = {
	}
}
ikviziConvoTemplate:addScreen(exit_one);

long_story = ConvoScreen:new {
	id = "long_story",
	leftDialog = "@conversation/ep3_clone_relics_trapped_geonosian:s_1452", --It's a long story but I swear to you my friend, I do not belong in this cage. Please help me prove my innocence.
	stopConversation = "false",
	options = {
		{"@conversation/ep3_clone_relics_trapped_geonosian:s_1454", "i_did"},--Didn't you get a fair trial?
		{"@conversation/ep3_clone_relics_trapped_geonosian:s_1518", "finally_listens"}--Well I have nothing better to do, what's your story?
	}
}
ikviziConvoTemplate:addScreen(long_story);

i_did = ConvoScreen:new {
	id = "i_did",
	leftDialog = "@conversation/ep3_clone_relics_trapped_geonosian:s_1456", --I suppose I did, that isn't the problem. The problem is that I was set up and no one believes it!
	stopConversation = "false",
	options = {
		{"@conversation/ep3_clone_relics_trapped_geonosian:s_1458", "no_one_listens"},--I'm sure the truth will come out sooner or later anyway.
		{"@conversation/ep3_clone_relics_trapped_geonosian:s_1514", "exit_two"}--I'm sorry, I have more important things to do than listen to your sob story.
	}
}
ikviziConvoTemplate:addScreen(i_did);

exit_two = ConvoScreen:new {
	id = "exit_two",
	leftDialog = "@conversation/ep3_clone_relics_trapped_geonosian:s_1522",--You heartless scum, I hope you'll get what you deserve one of these days!
	stopConversation = "true",
	options = {
	}
}
ikviziConvoTemplate:addScreen(exit_two);

no_one_listens = ConvoScreen:new {
	id = "no_one_listens",
	leftDialog = "@conversation/ep3_clone_relics_trapped_geonosian:s_1460", --How? No one seems to listen to me around here!
	stopConversation = "false",
	options = {
		{"@conversation/ep3_clone_relics_trapped_geonosian:s_1462", "finally_listens"},--Fine, let me hear your story.
		{"@conversation/ep3_clone_relics_trapped_geonosian:s_1510", "exit_three"}--I'm sure it will work out, take care now.
	}
}
ikviziConvoTemplate:addScreen(no_one_listens);

exit_three = ConvoScreen:new {
	id = "exit_three",
	leftDialog = "@conversation/ep3_clone_relics_trapped_geonosian:s_1512",--Why do I even bother...
	stopConversation = "true",
	options = {
	}
}
ikviziConvoTemplate:addScreen(exit_three);

finally_listens = ConvoScreen:new {
	id = "finally_listens",
	leftDialog = "@conversation/ep3_clone_relics_trapped_geonosian:s_1464", --Finally, someone who takes the time to listen. For this I thank you. First you should know what I was convicted of. Apparently I was found in the wilds with documents on my body proving that I was planning vile experiments on Wookiees. Although it's true that I came here to study the Wookiees, that's all that my intention was, to study them.
	stopConversation = "false",
	options = {
		{"@conversation/ep3_clone_relics_trapped_geonosian:s_1466", "course_not"}--The documents weren't yours?
	}
}
ikviziConvoTemplate:addScreen(finally_listens);

course_not = ConvoScreen:new {
	id = "course_not",
	leftDialog = "@conversation/ep3_clone_relics_trapped_geonosian:s_1468", --Of course not! I believe they belonged to some Trandoshan researchers that...I'm getting ahead of myself here.
	stopConversation = "false",
	options = {
		{"@conversation/ep3_clone_relics_trapped_geonosian:s_1470", "slave_camp"}--What was it?
	}
}
ikviziConvoTemplate:addScreen(course_not);

slave_camp = ConvoScreen:new {
	id = "slave_camp",
	leftDialog = "@conversation/ep3_clone_relics_trapped_geonosian:s_1472", --This wasn't a research camp but a slave camp. 
	stopConversation = "false",
	options = {
		{"@conversation/ep3_clone_relics_trapped_geonosian:s_1474", "any_proof"}--Most likely a wise choice, so what did you do?
	}
}
ikviziConvoTemplate:addScreen(slave_camp);

any_proof = ConvoScreen:new {
	id = "any_proof",
	leftDialog = "@conversation/ep3_clone_relics_trapped_geonosian:s_1476", --I decided I couldn't just leave without any proof.
	stopConversation = "false",
	options = {
		{"@conversation/ep3_clone_relics_trapped_geonosian:s_1478", "my_belief"}--They knocked you unconscious?
	}
}
ikviziConvoTemplate:addScreen(any_proof);

my_belief = ConvoScreen:new {
	id = "my_belief",
	leftDialog = "@conversation/ep3_clone_relics_trapped_geonosian:s_1480", --That is my belief, yes.
	stopConversation = "false",
	options = {
		{"@conversation/ep3_clone_relics_trapped_geonosian:s_1482", "superstitious"}--How come the Wookiees didn't believe your story?
	}
}
ikviziConvoTemplate:addScreen(my_belief);

superstitious = ConvoScreen:new {
	id = "superstitious",
	leftDialog = "@conversation/ep3_clone_relics_trapped_geonosian:s_1484", --The Wookiees are a superstitious and suspicious race.
	stopConversation = "false",
	options = {
		{"@conversation/ep3_clone_relics_trapped_geonosian:s_1486", "wookiee_history"}--What kind of things?
	}
}
ikviziConvoTemplate:addScreen(superstitious);

wookiee_history = ConvoScreen:new {
	id = "wookiee_history",
	leftDialog = "@conversation/ep3_clone_relics_trapped_geonosian:s_1488", --Only what any scientist would do to learn about a new race.
	stopConversation = "false",
	options = {
		{"@conversation/ep3_clone_relics_trapped_geonosian:s_1490", "proud_race"}--Why would you want to do that?
	}
}
ikviziConvoTemplate:addScreen(wookiee_history);

proud_race = ConvoScreen:new {
	id = "proud_race",
	leftDialog = "@conversation/ep3_clone_relics_trapped_geonosian:s_1460", --How? No one seems to listen to me around here!
	stopConversation = "false",
	options = {
		{"@conversation/ep3_clone_relics_trapped_geonosian:s_1494", "exit_four"},--Sounds like you got what you deserve, I'm out of here!
		{"@conversation/ep3_clone_relics_trapped_geonosian:s_1498", "gather_proof"}--I see, quite the misfortune. What would you have me do?
	}
}
ikviziConvoTemplate:addScreen(proud_race);

exit_four = ConvoScreen:new {
	id = "exit_four",
	leftDialog = "@conversation/ep3_clone_relics_trapped_geonosian:s_1512",--Why do I even bother...
	stopConversation = "true",
	options = {
	}
}
ikviziConvoTemplate:addScreen(exit_four);

gather_proof = ConvoScreen:new {
	id = "gather_proof",
	leftDialog = "@conversation/ep3_clone_relics_trapped_geonosian:s_1500", --Maybe you could try to find their camp and gather some proof.
	stopConversation = "false",
	options = {
		{"@conversation/ep3_clone_relics_trapped_geonosian:s_1502", "accept_mission_one"},--Agreed, where do I find the camp?
		{"@conversation/ep3_clone_relics_trapped_geonosian:s_1506", "exit_five"}--I wish I could, but not right now. I might be back later.
	}
}
ikviziConvoTemplate:addScreen(gather_proof);

exit_five = ConvoScreen:new {
	id = "exit_five",
	leftDialog = "@conversation/ep3_clone_relics_trapped_geonosian:s_1512",--Why do I even bother...
	stopConversation = "true",
	options = {
	}
}
ikviziConvoTemplate:addScreen(exit_five);

accept_mission_one = ConvoScreen:new {
	id = "accept_mission_one",
	leftDialog = "@conversation/ep3_clone_relics_trapped_geonosian:s_1504",--Unless they moved their camp, head east of here until you reach a Wookiee village.
	stopConversation = "true",
	options = {
	}
}
ikviziConvoTemplate:addScreen(accept_mission_one);

in_progress_one = ConvoScreen:new {
	id = "in_progress_one",
	leftDialog = "@conversation/ep3_clone_relics_trapped_geonosian:s_1420", --What are you still doing here?
	stopConversation = "false",
	options = {
		{"@conversation/ep3_clone_relics_trapped_geonosian:s_1422", "good_luck"},--Sorry, I'm just about to leave.
		{"@conversation/ep3_clone_relics_trapped_geonosian:s_1426", "exit_six"}--I can't do this, I'm sorry.
	}
}
ikviziConvoTemplate:addScreen(in_progress_one);

exit_six = ConvoScreen:new {
	id = "exit_six",
	leftDialog = "@conversation/ep3_clone_relics_trapped_geonosian:s_1428",--Sigh, I thought things was finally going to be set right.
	stopConversation = "true",
	options = {
	}
}
ikviziConvoTemplate:addScreen(exit_six);

not_criminal = ConvoScreen:new {
	id = "not_criminal",
	leftDialog = "@conversation/ep3_clone_relics_trapped_geonosian:s_1438", --That's good, since I'm not a criminal. I was unjustly imprisoned.
	stopConversation = "false",
	options = {
		{"@conversation/ep3_clone_relics_trapped_geonosian:s_1440", "few_minutes"},--Why would I believe you?
		{"@conversation/ep3_clone_relics_trapped_geonosian:s_1446", "exit_seven"}--Isn't that what they all say? Take it up with someone else.
	}
}
ikviziConvoTemplate:addScreen(not_criminal);

exit_seven = ConvoScreen:new {
	id = "exit_seven",
	leftDialog = "@conversation/ep3_clone_relics_trapped_geonosian:s_1428",--Sigh, I thought things was finally going to be set right.
	stopConversation = "true",
	options = {
	}
}
ikviziConvoTemplate:addScreen(exit_seven);

few_minutes = ConvoScreen:new {
	id = "few_minutes",
	leftDialog = "@conversation/ep3_clone_relics_trapped_geonosian:s_1442", --All I ask is a few minutes of your time, to tell you my story.
	stopConversation = "false",
	options = {
		{"@conversation/ep3_clone_relics_trapped_geonosian:s_1444", "finally_listens"}--I suppose, but this better be good.
	}
}
ikviziConvoTemplate:addScreen(few_minutes);

good_luck = ConvoScreen:new {
	id = "good_luck",
	leftDialog = "@conversation/ep3_clone_relics_trapped_geonosian:s_1424",--Excellent, good luck my friend.
	stopConversation = "true",
	options = {
	}
}
ikviziConvoTemplate:addScreen(good_luck);

task_one_in_progress = ConvoScreen:new {
	id = "task_one_in_progress",
	leftDialog = "@conversation/ep3_clone_relics_trapped_geonosian:s_1420", --What are you still doing here?
	stopConversation = "false",
	options = {
		{"@conversation/ep3_clone_relics_trapped_geonosian:s_1422", "good_luck"},--Sorry, I'm just about to leave.
		{"@conversation/ep3_clone_relics_trapped_geonosian:s_1426", ""}--I can't do this, I'm sorry.
	}
}
ikviziConvoTemplate:addScreen(task_one_in_progress);

mission_one_complete = ConvoScreen:new {
	id = "mission_one_complete",
	leftDialog = "@conversation/ep3_clone_relics_trapped_geonosian:s_1406", --You have returned! Please tell me you found what what we talked about?
	stopConversation = "false",
	options = {
		{"@conversation/ep3_clone_relics_trapped_geonosian:s_1408", "wookiee_elders"}--I believe so! Have a look at this.
	}
}
ikviziConvoTemplate:addScreen(mission_one_complete);

wookiee_elders = ConvoScreen:new {
	id = "wookiee_elders",
	leftDialog = "@conversation/ep3_clone_relics_trapped_geonosian:s_1410", --<Ikvizi quickly starts to skim through the documents.> This is perfect!
	stopConversation = "false",
	options = {
		{"@conversation/ep3_clone_relics_trapped_geonosian:s_1412", "accept_mission_two"}--Excellent! Who do I talk to?
	}
}
ikviziConvoTemplate:addScreen(wookiee_elders);

accept_mission_two = ConvoScreen:new {
	id = "accept_mission_two",
	leftDialog = "@conversation/ep3_clone_relics_trapped_geonosian:s_1414",--Talk to Elder Ovarra. She was one of the judges at my trial and seemed the most skeptic to the witnesses presented.
	stopConversation = "true",
	options = {
	}
}
ikviziConvoTemplate:addScreen(accept_mission_two);

in_progress_two = ConvoScreen:new {
	id = "in_progress_two",
	leftDialog = "@conversation/ep3_clone_relics_trapped_geonosian:s_1350", --Did you talk to her? What did she say?
	stopConversation = "false",
	options = {
		{"@conversation/ep3_clone_relics_trapped_geonosian:s_1352", "in_progress_two_response"},--Sorry, I haven't found her yet.
		{"@conversation/ep3_clone_relics_trapped_geonosian:s_1356", "in_progress_two_a"}--I can't do this, I'm sorry.
	}
}
ikviziConvoTemplate:addScreen(in_progress_two);

in_progress_two_a = ConvoScreen:new {
	id = "in_progress_two_a",
	leftDialog = "@conversation/ep3_clone_relics_trapped_geonosian:s_1358", --What? All you have to do is go over there and show the papers to her.
	stopConversation = "false",
	options = {
		{"@conversation/ep3_clone_relics_trapped_geonosian:s_1360", "in_progress_two_response_a"},--Fine fine, I'm going.
		{"@conversation/ep3_clone_relics_trapped_geonosian:s_1364", "in_progress_two_response_b"}--Well I don't want to, how's that?
	}
}
ikviziConvoTemplate:addScreen(in_progress_two_a);

in_progress_two_response = ConvoScreen:new {
	id = "in_progress_two_response",
	leftDialog = "@conversation/ep3_clone_relics_trapped_geonosian:s_1354",--She should be over in the great tree at the center of Kachirho.
	stopConversation = "true",
	options = {
	}
}
ikviziConvoTemplate:addScreen(in_progress_two_response);

in_progress_two_response_a = ConvoScreen:new {
	id = "in_progress_two_response_a",
	leftDialog = "@conversation/ep3_clone_relics_trapped_geonosian:s_1362",--< Ikvizi draws a sigh of relief. >
	stopConversation = "true",
	options = {
	}
}
ikviziConvoTemplate:addScreen(in_progress_two_response_a);

in_progress_two_response_b = ConvoScreen:new {
	id = "in_progress_two_response_b",
	leftDialog = "@conversation/ep3_clone_relics_trapped_geonosian:s_1366",--You... you can not be serious...
	stopConversation = "true",
	options = {
	}
}
ikviziConvoTemplate:addScreen(in_progress_two_response_b);

mission_two_complete = ConvoScreen:new {
	id = "mission_two_complete",
	customDialogText = "Did you talk to her? What did she say?",
	stopConversation = "false",
	options = {
		{"@conversation/ep3_clone_relics_trapped_geonosian:s_1374", "what_happens_now"}--She didn't seem too surprised about what I showed her.
	}
}
ikviziConvoTemplate:addScreen(mission_two_complete);

what_happens_now = ConvoScreen:new {
	id = "what_happens_now",
	leftDialog = "@conversation/ep3_clone_relics_trapped_geonosian:s_1376", --Really? What will happen now?
	stopConversation = "false",
	options = {
		{"@conversation/ep3_clone_relics_trapped_geonosian:s_1378", "doin_time"}--You will have to sit off some time for the bribe but that's it.
	}
}
ikviziConvoTemplate:addScreen(what_happens_now);

doin_time = ConvoScreen:new {
	id = "doin_time",
	leftDialog = "@conversation/ep3_clone_relics_trapped_geonosian:s_1380", --What?! I practically stopped the Trandoshans from enslaving their whole species.
	stopConversation = "false",
	options = {
		{"@conversation/ep3_clone_relics_trapped_geonosian:s_1382", "listen_carefully"}--What are you talking about?
	}
}
ikviziConvoTemplate:addScreen(doin_time);

listen_carefully = ConvoScreen:new {
	id = "listen_carefully",
	leftDialog = "@conversation/ep3_clone_relics_trapped_geonosian:s_1384", --I have a reward for you, so listen carefully my friend.
	stopConversation = "false",
	options = {
		{"@conversation/ep3_clone_relics_trapped_geonosian:s_1386", "fourth_moon"}--I'm all ears.
	}
}
ikviziConvoTemplate:addScreen(listen_carefully);

fourth_moon = ConvoScreen:new {
	id = "fourth_moon",
	leftDialog = "@conversation/ep3_clone_relics_trapped_geonosian:s_1388", -- A few years ago I was a scientist at a lab on the fourth moon of Yavin.
	stopConversation = "false",
	options = {
		{"@conversation/ep3_clone_relics_trapped_geonosian:s_1390", "formidable_mounts"}--I've seen them, they are impressive.
	}
}
ikviziConvoTemplate:addScreen(fourth_moon);

formidable_mounts = ConvoScreen:new {
	id = "formidable_mounts",
	leftDialog = "@conversation/ep3_clone_relics_trapped_geonosian:s_1392", -- Yes they are formidable riding mounts.
	stopConversation = "false",
	options = {
		{"@conversation/ep3_clone_relics_trapped_geonosian:s_1394", "mag_seal"}--Interesting.
	}
}
ikviziConvoTemplate:addScreen(formidable_mounts);

mag_seal = ConvoScreen:new {
	id = "mag_seal",
	leftDialog = "@conversation/ep3_clone_relics_trapped_geonosian:s_1396", --If you're interested, travel there and find the Mag Seal container I stored it in.
	stopConversation = "false",
	options = {
		{"@conversation/ep3_clone_relics_trapped_geonosian:s_1398", "accept_mission_three"}--I should be fine.
	}
}
ikviziConvoTemplate:addScreen(mag_seal);

accept_mission_three = ConvoScreen:new {
	id = "accept_mission_three",
	customDialogText = "I hope so. The lab can be found near the coordinates -6500, -400 on the moon Yavin 4. Again, thank you for all that you have done for me and good luck.",
	stopConversation = "true",
	options = {
	}
}
ikviziConvoTemplate:addScreen(accept_mission_three);

task_three_in_progress = ConvoScreen:new {
	id = "task_three_in_progress",
	leftDialog = "@conversation/ep3_clone_relics_trapped_geonosian:s_1336", --May I help you my friend?
	stopConversation = "false",
	options = {
		{"@conversation/ep3_clone_relics_trapped_geonosian:s_1338", "of_course"},--I need the directions to the lab again.
		{"@conversation/ep3_clone_relics_trapped_geonosian:s_1342", "i_understand"}--I can't do this, I've heard some bad things about that place.
	}
}
ikviziConvoTemplate:addScreen(task_three_in_progress);

of_course = ConvoScreen:new {
	id = "of_course",
	leftDialog = "@conversation/ep3_clone_relics_trapped_geonosian:s_1340",--Of course. The lab can be found near the coordinates -6500, -400 on the moon Yavin 4.
	stopConversation = "true",
	options = {
	}
}
ikviziConvoTemplate:addScreen(of_course);

i_understand = ConvoScreen:new {
	id = "i_understand",
	leftDialog = "@conversation/ep3_clone_relics_trapped_geonosian:s_1344",--I understand friend, come back if you change your mind.
	stopConversation = "true",
	options = {
	}
}
ikviziConvoTemplate:addScreen(i_understand);

mission_three_inprogress = ConvoScreen:new {
	id = "mission_three_inprogress",
	customDialogText = "Yeah I'm still in here. The elders told me it shouldn't be long before I'm released now though, thanks to you.",
	stopConversation = "true",
	options = {
	}
}
ikviziConvoTemplate:addScreen(mission_three_inprogress);

all_complete = ConvoScreen:new {
	id = "all_complete",
	customDialogText = "Yeah I'm still in here. The elders told me it shouldn't be long before I'm released now though, thanks to you.",
	stopConversation = "true",
	options = {
	}
}
ikviziConvoTemplate:addScreen(all_complete);

reset_one = ConvoScreen:new {--***************RESET MISSION AND CLEAR JOURNAL (MISSION ONE ACCEPTED)**********************
	id = "reset_one",
	leftDialog = "@conversation/ep3_clone_relics_trapped_geonosian:s_1428",--Sigh, I thought things was finally going to be set right.
	stopConversation = "true",
	options = {
	}
}
ikviziConvoTemplate:addScreen(reset_one);



--[[
QM 
1 find camp  - active area 456, 18, 240 50m
2. Steal research docs.
	sys msg "Trandoshan research document." .. countLeft .. " remaining" --100% drop
3. return Ikvizi
4. Find Ovarra
5. Return to Ikvizi
6. Find the geo lab
7. Search the lab


object/tangible/quest/shared_crate_magseal.iff

--]]















addConversationTemplate("ikviziConvoTemplate", ikviziConvoTemplate);
