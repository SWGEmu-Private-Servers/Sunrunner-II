-- Modified for DrDax's Pandorum Collection 2017-8
-- Credit to MTG & Team -- http://www.modthegalaxy.com
---------------------------------------------------------------

younggun_pq01_npcmain_convo_template = ConvoTemplate:new {
	initialScreen = "",
	templateType = "Lua",
	luaClassHandler = "younggun_pq01_npcmainConvoHandler",
	screens = {}
}

start_quest = ConvoScreen:new {
	id = "start_quest",
	leftDialog = "",
	customDialogText = "So are you ready to get to work?",
	stopConversation = "false",
	options = {
		{"I might be... what do you want?", "darrels_cut"},
		{"Leave Tat & into space", "launch_spaceyt1"},
		{"Land on Ordmantell", "land_ordmantell"},
		{"Leave Ordmantell & into space", "launch_spaceyt2"},
		{"Land on Nalhutta", "land_nalhutta"},
		{"Leave Nalhutta & into space", "launch_spaceyt3"},
		{"Leave Space go to Taanab", "land_taanab"},
		{"Leave Taanab go to Tat direct", "land_tatooine"},
		{"Spawn a trooper in space", "create_npc"},
		{"Despawn the trooper", "remove_npc"},
		{"I bumped my head and forgot what I am doing...", "info_mission"},
		{"This looks shady, I am getting off!", "exit_yt"},
		{"I want to reset this fantastic quest.", "reset_quest"}
	}
}
younggun_pq01_npcmain_convo_template:addScreen(start_quest);

land_spaceyt1 = ConvoScreen:new {
	id = "land_spaceyt1",
	leftDialog = "",
	customDialogText = "So are you ready to get to work?",
	stopConversation = "false",
	options = {
		{"I might be... what do you want?", "darrels_cut"},
		{"Leave Tat & into space", "launch_spaceyt1"},
		{"Land on Ordmantell", "land_ordmantell"},
		{"Leave Ordmantell & into space", "launch_spaceyt2"},
		{"Land on Nalhutta", "land_nalhutta"},
		{"Leave Nalhutta & into space", "launch_spaceyt3"},
		{"Leave Space go to Taanab", "land_taanab"},
		{"Leave Taanab go to Tat direct", "land_tatooine"},
		{"Spawn a trooper in space", "create_npc"},
		{"Despawn the trooper", "remove_npc"},
		{"I bumped my head and forgot what I am doing...", "info_mission"},
		{"This looks shady, I am getting off!", "exit_yt"},
		{"I want to reset this fantastic quest.", "reset_quest"}
	}
}
younggun_pq01_npcmain_convo_template:addScreen(land_spaceyt1);



land_ordmantell = ConvoScreen:new {
	id = "land_ordmantell",
	leftDialog = "",
	customDialogText = "So are you ready to get to work?",
	stopConversation = "false",
	options = {
		{"I might be... what do you want?", "darrels_cut"},
		{"Leave Tat & into space", "launch_spaceyt1"},
		{"Land on Ordmantell", "land_ordmantell"},
		{"Leave Ordmantell & into space", "launch_spaceyt2"},
		{"Land on Nalhutta", "land_nalhutta"},
		{"Leave Nalhutta & into space", "launch_spaceyt3"},
		{"Leave Space go to Taanab", "land_taanab"},
		{"Leave Taanab go to Tat direct", "land_tatooine"},
		{"Spawn a trooper in space", "create_npc"},
		{"Despawn the trooper", "remove_npc"},
		{"I bumped my head and forgot what I am doing...", "info_mission"},
		{"This looks shady, I am getting off!", "exit_yt"},
		{"I want to reset this fantastic quest.", "reset_quest"}
	}
}
younggun_pq01_npcmain_convo_template:addScreen(land_ordmantell);

launch_spaceyt1 = ConvoScreen:new {
	id = "launch_spaceyt1",
	leftDialog = "",
	customDialogText = "Launched into Space",
	stopConversation = "true",
	options = {}
}
younggun_pq01_npcmain_convo_template:addScreen(launch_spaceyt1);

launch_spaceyt2 = ConvoScreen:new {
	id = "launch_spaceyt2",
	leftDialog = "",
	customDialogText = "Launched into Space",
	stopConversation = "true",
	options = {}
}
younggun_pq01_npcmain_convo_template:addScreen(launch_spaceyt2);

info_mission = ConvoScreen:new {
	id = "info_mission",
	leftDialog = "",
	customDialogText = "You need to what you are told.  Sit back and get ready to fly..",
	stopConversation = "false",
	options = {
		{"I might be... what do you want?", "darrels_cut"},
		{"Leave Tat & into space", "launch_spaceyt1"},
		{"Land on Ordmantell", "land_ordmantell"},
		{"Leave Ordmantell & into space", "launch_spaceyt2"},
		{"Land on Nalhutta", "land_nalhutta"},
		{"Leave Nalhutta & into space", "launch_spaceyt3"},
		{"Leave Space go to Taanab", "land_taanab"},
		{"Leave Taanab go to Tat direct", "land_tatooine"},
		{"Spawn a trooper in space", "create_npc"},
		{"Despawn the trooper", "remove_npc"},
		{"I bumped my head and forgot what I am doing...", "info_mission"},
		{"This looks shady, I am getting off!", "exit_yt"},
		{"I want to reset this fantastic quest.", "reset_quest"}
	}
}
younggun_pq01_npcmain_convo_template:addScreen(info_mission);

darrels_cut = ConvoScreen:new {
	id = "darrels_cut",
	leftDialog = "",
	customDialogText = "put Darrel's story here",
	stopConversation = "false",
	options = {
		{"I might be... what do you want?", "darrels_cut"},
		{"Leave Tat & into space", "launch_spaceyt1"},
		{"Land on Ordmantell", "land_ordmantell"},
		{"Leave Ordmantell & into space", "launch_spaceyt2"},
		{"Land on Nalhutta", "land_nalhutta"},
		{"Leave Nalhutta & into space", "launch_spaceyt3"},
		{"Leave Space go to Taanab", "land_taanab"},
		{"Leave Taanab go to Tat direct", "land_tatooine"},
		{"Spawn a trooper in space", "create_npc"},
		{"Despawn the trooper", "remove_npc"},
		{"I bumped my head and forgot what I am doing...", "info_mission"},
		{"This looks shady, I am getting off!", "exit_yt"},
		{"I want to reset this fantastic quest.", "reset_quest"}
	}
}
younggun_pq01_npcmain_convo_template:addScreen(darrels_cut);

---
exit_yt = ConvoScreen:new {
	id = "exit_yt",
	leftDialog = "",
	customDialogText = "Don't tell Dax, he worked hard on this quest!",
	stopConversation = "true",
	options = {}
}
younggun_pq01_npcmain_convo_template:addScreen(exit_yt);
---

quest_complete = ConvoScreen:new {
	id = "quest_complete",
	leftDialog = "",
	customDialogText = "Thanks for finding all the pieces, hope you are enjoying the schematics.",
	stopConversation = "false",
	options = {
			{"I can't wait to make me some armor!", "bye"},
	}
}
younggun_pq01_npcmain_convo_template:addScreen(quest_complete);
---
land_nalhutta = ConvoScreen:new {
	id = "land_nalhutta",
	leftDialog = "",
	customDialogText = "Thanks for finding all the pieces, hope you are enjoying the schematics.",
	stopConversation = "false",
	options = {
			{"I can't wait to make me some armor!", "bye"},
	}
}
younggun_pq01_npcmain_convo_template:addScreen(land_nalhutta);
---
launch_spaceyt3 = ConvoScreen:new {
	id = "launch_spaceyt3",
	leftDialog = "",
	customDialogText = "Thanks for finding all the pieces, hope you are enjoying the schematics.",
	stopConversation = "false",
	options = {
			{"I can't wait to make me some armor!", "bye"},
	}
}
younggun_pq01_npcmain_convo_template:addScreen(launch_spaceyt3);
---
land_taanab = ConvoScreen:new {
	id = "land_taanab",
	leftDialog = "",
	customDialogText = "Thanks for finding all the pieces, hope you are enjoying the schematics.",
	stopConversation = "false",
	options = {
			{"I can't wait to make me some armor!", "bye"},
	}
}
younggun_pq01_npcmain_convo_template:addScreen(land_taanab);
---
land_tatooine = ConvoScreen:new {
	id = "land_tatooine",
	leftDialog = "",
	customDialogText = "Thanks for finding all the pieces, hope you are enjoying the schematics.",
	stopConversation = "false",
	options = {
			{"I can't wait to make me some armor!", "bye"},
	}
}
younggun_pq01_npcmain_convo_template:addScreen(land_tatooine);
---
reset_quest = ConvoScreen:new {
	id = "reset_quest",
	customDialogText = "Ok .. I will reset the quest just for you.",
	stopConversation = "true",
	options = {}
}
younggun_pq01_npcmain_convo_template:addScreen(reset_quest);
----
-----------------------------------------
bye = ConvoScreen:new {
	id = "bye",
	customDialogText = "Ok ... take care.",
	stopConversation = "true",
	options = {}
}
younggun_pq01_npcmain_convo_template:addScreen(bye);

-----------------------
-----------------------------------------
create_npc = ConvoScreen:new {
	id = "create_npc",
	customDialogText = "Ok ... take care.",
	stopConversation = "true",
	options = {}
}
younggun_pq01_npcmain_convo_template:addScreen(create_npc);

---
remove_npc = ConvoScreen:new {
	id = "remove_npc",
	customDialogText = "Ok ... take care.",
	stopConversation = "true",
	options = {}
}
younggun_pq01_npcmain_convo_template:addScreen(remove_npc);

addConversationTemplate("younggun_pq01_npcmain_convo_template", younggun_pq01_npcmain_convo_template);
