-- Modified for DrDax's Pandorum Collection 2017-8
-- Credit to MTG & Team -- http://www.modthegalaxy.com

-- General Section ==============
-- used for examples
-- mobile :npc_codex01
-- screenplay: codex01
----------------------------------------------------------------------
npc_codex01_convo_template = ConvoTemplate:new {
	initialScreen = "",
	templateType = "Lua",
	luaClassHandler = "codex01ConvoHandler",
	screens = {}
}
--------------------------------------------------------------------------
start = ConvoScreen:new {
  id = "start",
  leftDialog = "",
  customDialogText = "Let's test these different screenplay functions.",
  stopConversation = "false", 
  options = {	{"Test activate CODEX01 quest", "activatequest"},
		{"Set CODEX01 quest to inprogress", ""},
		{"Set CODEX01 quest to ready to claim reward", "readytoclaim"},
		{"Set CODEX01 quest to completed", ""},
		{"Test reset CODEX01 quest", "resetquest"},
		{"Test Misc Varibles n Functions Test", "screenflow"},
		{"Test Write Perm Data", "jtwritedatap"},
		{"Test Change Perm Data", "jtchangedatap"},
		{"Test Delete Perm Data", "jtdeletedatap"},
		{"Test Read Perm Data", "jtreaddatap"},
		{"Test Write Temp Data", "jtwritedata"},
		{"Test Read Temp Data", "jtreaddata"},
		{"Iam done for now, thanks.", "bye"},
     }
}
npc_codex01_convo_template:addScreen(start);
--------------------------------------------------------------------------------
accept_mission_one = ConvoScreen:new {
	id = "accept_mission_one",
	leftDialog = "",
	customDialogText = "There might be some wiring in the debris field over by...well, let me just send you a marker to it. Any engine parts may still have some in them.",
	stopConversation = "true",
	options = {}
}
npc_codex01_convo_template:addScreen(accept_mission_one);
--
inprogress = ConvoScreen:new {
	id = "inprogress",
	leftDialog = "",
	customDialogText = "You have not finished the quest.",
	stopConversation = "false",
	options = {  {"Back to Main Menu", "start"},
		{"I am done for now baby!", "bye"},
		{"I want to reset this quest.", "resetquest"}
	}
}
npc_codex01_convo_template:addScreen(inprogress);
--
readytoclaim = ConvoScreen:new {
	id = "readytoclaim",
	leftDialog = "",
	customDialogText = "You are eligible to claim your reward.",
	stopConversation = "false",
	options = {	{"Claim Reward and Complete the Quest", "claimandcomplete"},
			{"Main Menu please", "start"},
		    	{"I am done for now, thanks.", "bye"},
	}
}
npc_codex01_convo_template:addScreen(readytoclaim);
-- 
claimandcomplete = ConvoScreen:new {
	id = "claimandcomplete",
	leftDialog = "",
	customDialogText = "Your reward has been placed in your inventory, good job!",
	stopConversation = "true",
	options = {}
}
npc_codex01_convo_template:addScreen(claimandcomplete);
--
questcompleted = ConvoScreen:new {
	id = "questcompleted",
	leftDialog = "",
	customDialogText = "Good to see you again, good job on finishing the quest.",
	stopConversation = "true",
	options = {}
}
npc_codex01_convo_template:addScreen(questcompleted);
--
resetquest = ConvoScreen:new {
	id = "resetquest",
	customDialogText = "Quest has been Reset.",
	stopConversation = "false",
	options = { {"Main Menu", "start"},
		    {"I am done for now, thanks.", "bye"},
	}
}
npc_codex01_convo_template:addScreen(resetquest);
-- 

activatequest = ConvoScreen:new {
  id = "activatequest",
  leftDialog = "",
  customDialogText = "Quest Activated... What's next?",
  stopConversation = "false", 
  options = {	{"Main Menu please.", "start"},
		{"Not right now, thanks.", "bye"},
     }
}
npc_codex01_convo_template:addScreen(activatequest);
--

hasactivequest = ConvoScreen:new {
  id = "hasactivequest",
  leftDialog = "",
  customDialogText = "Has Active Quest test complete... What's next?",
  stopConversation = "false", 
  options = {	{"Main Menu", "start"},
		{"Not right now, thanks.", "bye"},
     }
}
npc_codex01_convo_template:addScreen(hasactivequest);
--------------------Perm Data---------------------------------------------------------

jtwritedatap = ConvoScreen:new {
  id = "jtwritedatap",
  leftDialog = "",
  customDialogText = "Test Write Persistent Data",
  stopConversation = "false", 
  options = {	{"I am done for now, thanks.", "bye"},
		{"Back to Start", "start"},
	}
}
npc_codex01_convo_template:addScreen(jtwritedatap);
------------------
jtchangedatap = ConvoScreen:new {
	id = "jtchangedatap",
	leftDialog = "",
	customDialogText = "You are eligible to claim your reward.",
	stopConversation = "false",
	options = {	{"Claim Reward and Complete the Quest", "claimandcomplete"},
			{"Main Menu please", "start"},
		    	{"I am done for now, thanks.", "bye"},
	}
}
npc_codex01_convo_template:addScreen(jtchangedatap);
-------------------
jtdeletedatap = ConvoScreen:new {
	id = "jtdeletedatap",
	leftDialog = "",
	customDialogText = "You are eligible to claim your reward.",
	stopConversation = "false",
	options = {	{"Claim Reward and Complete the Quest", "claimandcomplete"},
			{"Main Menu please", "start"},
		    	{"I am done for now, thanks.", "bye"},
	}
}
npc_codex01_convo_template:addScreen(jtdeletedatap);

-------------------------------------------

jtreaddatap = ConvoScreen:new {
  id = "jtreaddatap",
  leftDialog = "",
  customDialogText = "Test Read Persistent Data",
  stopConversation = "false", 
  options = {	{"I am done for now, thanks.", "bye"},
		{"Back to Main Menu", "start"},
	 }
}
npc_codex01_convo_template:addScreen(jtreaddatap);

------------Temp Data-------------------------------

jtwritedata = ConvoScreen:new {
  id = "jtwritedata",
  leftDialog = "",
  customDialogText = "Test Write Temp Data",
  stopConversation = "false", 
  options = {	{"It worked and I am done for now.", "bye"},
		{"Back to Start", "start"},
	}
}
npc_codex01_convo_template:addScreen(jtwritedata);
----------

jtreaddata = ConvoScreen:new {
  id = "jtreaddata",
  leftDialog = "",
  customDialogText = "Test Read Temp Data",
  stopConversation = "false", 
  options = {	{"I am done for now, thanks.", "bye"},
		{"Back to Start", "start"},
	 }
}
npc_codex01_convo_template:addScreen(jtreaddata);
---------------------------------------------------------

screenflow = ConvoScreen:new {
  id = "screenflow",
  leftDialog = "",
    customDialogText = "Keep Testing??",
stopConversation = "false",
   options = {  {"Yes dammit, I'm not done blowing this up yet!", "start"},
		{"it worked and I am done for now.", "bye"},
  }
}
npc_codex01_convo_template:addScreen(screenflow);

-------------------------------------------

bye = ConvoScreen:new {
  id = "bye",
  leftDialog = "",
    customDialogText = "Cherrio!",
stopConversation = "true",
   options = {  
  }
}
npc_codex01_convo_template:addScreen(bye);

----------------------------------------------------------------------
addConversationTemplate("npc_codex01_convo_template", npc_codex01_convo_template);
