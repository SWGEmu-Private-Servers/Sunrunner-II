function createMissionGiverConvoTemplate(templateName, convoHandler)
	mission_giver_convotemplate = ConvoTemplate:new {
		initialScreen = "init",
		templateType = "Lua",
		luaClassHandler = convoHandler,
		screens = {}
	}

	mission_giver_init = ConvoScreen:new {
		id = "init",
		leftDialog = "",
		stopConversation = "false",
		options = {
		}
	}

	mission_giver_convotemplate:addScreen(mission_giver_init);

	mission_giver_failure = ConvoScreen:new {
		id = "failure",
		leftDialog = "",
		stopConversation = "true",
		options = {
		}
	}

	mission_giver_convotemplate:addScreen(mission_giver_failure);

	mission_giver_no_faction = ConvoScreen:new {
		id = "no_faction",
		leftDialog = "",
		stopConversation = "true",
		options = {
		}
	}

	mission_giver_convotemplate:addScreen(mission_giver_no_faction);

	mission_giver_cant_work = ConvoScreen:new {
		id = "cant_work",
		leftDialog = ":cant_work",
		stopConversation = "true",
		options = {
		}
	}

	mission_giver_convotemplate:addScreen(mission_giver_cant_work);

	mission_giver_invfull = ConvoScreen:new {
		id = "inv_full",
		leftDialog = "",
		stopConversation = "true",
		options = {
		}
	}

	mission_giver_convotemplate:addScreen(mission_giver_invfull);

	mission_giver_too_weak = ConvoScreen:new {
		id = "too_weak",
		leftDialog = "",
		stopConversation = "true",
		options = {
		}
	}

	mission_giver_convotemplate:addScreen(mission_giver_too_weak);

	mission_giver_next = ConvoScreen:new {
		id = "next",
		leftDialog = ":next",
		stopConversation = "true",
		options = {
		}
	}

	mission_giver_convotemplate:addScreen(mission_giver_next);

	mission_giver_notyet = ConvoScreen:new {
		id = "notyet",
		leftDialog = ":notyet",
		stopConversation = "true",
		options = {
		}
	}

	mission_giver_convotemplate:addScreen(mission_giver_notyet);

	mission_giver_notit_n = ConvoScreen:new {
		id = "notit_n",
		leftDialog = ":notit_1",
		stopConversation = "true",
		options = {
		}
	}

	mission_giver_convotemplate:addScreen(mission_giver_notit_n);

	mission_giver_npc_1_n = ConvoScreen:new {
		id = "npc_1_n",
		leftDialog = ":npc_1_1",
		stopConversation = "false",
		options = {
			{ ":player_1_1", "accept" },
			{ ":player_2_1", "npc_3_n" },
			{ ":player_3_1", "npc_4_n" },
			{ ":player_4_1", "npc_5_n" },
			{ ":player_5_1", "npc_6_n" }
		}
	}

	mission_giver_convotemplate:addScreen(mission_giver_npc_1_n);

	mission_giver_accept = ConvoScreen:new {
		id = "accept",
		leftDialog = "",
		stopConversation = "false",
		options = {
		}
	}

	mission_giver_convotemplate:addScreen(mission_giver_accept);

	mission_giver_npc_2_n = ConvoScreen:new {
		id = "npc_2_n",
		leftDialog = ":npc_2_1",
		stopConversation = "true",
		options = {
		}
	}

	mission_giver_convotemplate:addScreen(mission_giver_npc_2_n);

	mission_giver_npc_noloc_n = ConvoScreen:new {
		id = "npc_noloc_n",
		leftDialog = ":npc_noloc_1",
		stopConversation = "true",
		options = {
		}
	}

	mission_giver_convotemplate:addScreen(mission_giver_npc_noloc_n);

	mission_giver_npc_3_n = ConvoScreen:new {
		id = "npc_3_n",
		leftDialog = ":npc_3_1",
		stopConversation = "true",
		options = {
		}
	}

	mission_giver_convotemplate:addScreen(mission_giver_npc_3_n);

	mission_giver_npc_4_n = ConvoScreen:new {
		id = "npc_4_n",
		leftDialog = ":npc_4_1",
		stopConversation = "false",
		options = {
			{ ":player_1_1", "accept" },
			{ ":player_2_1", "npc_3_n" },
			{ ":player_4_1", "npc_5_n" },
			{ ":player_5_1", "npc_6_n" }
		}
	}

	mission_giver_convotemplate:addScreen(mission_giver_npc_4_n);

	mission_giver_npc_5_n = ConvoScreen:new {
		id = "npc_5_n",
		leftDialog = ":npc_5_1",
		stopConversation = "false",
		options = {
			{ ":player_1_1", "accept" },
			{ ":player_2_1", "npc_3_n" },
			{ ":player_3_1", "npc_4_n" },
			{ ":player_5_1", "npc_6_n" }
		}
	}

	mission_giver_convotemplate:addScreen(mission_giver_npc_5_n);

	mission_giver_npc_6_n = ConvoScreen:new {
		id = "npc_6_n",
		leftDialog = ":npc_6_1",
		stopConversation = "false",
		options = {
			{ ":player_1_1", "accept" },
			{ ":player_2_1", "npc_3_n" },
			{ ":player_3_1", "npc_4_n" },
			{ ":player_4_1", "npc_5_n" }
		}
	}

	mission_giver_convotemplate:addScreen(mission_giver_npc_6_n);
	
	mission_giver_npc_7_n = ConvoScreen:new {
		id = "npc_7_n",
		leftDialog = ":npc_7_1",
		stopConversation = "false",
		options = {
			{ ":player_1_1", "accept" },
			{ ":player_2_1", "npc_3_n" },
			{ ":player_3_1", "npc_4_n" },
			{ ":player_4_1", "npc_5_n" }
		}
	}

	mission_giver_convotemplate:addScreen(mission_giver_npc_7_n);
	
	mission_giver_npc_8_n = ConvoScreen:new {
		id = "npc_8_n",
		leftDialog = ":npc_8_1",
		stopConversation = "false",
		options = {
			{ ":player_1_1", "accept" },
			{ ":player_2_1", "npc_3_n" },
			{ ":player_3_1", "npc_4_n" },
			{ ":player_4_1", "npc_5_n" }
		}
	}

	mission_giver_convotemplate:addScreen(mission_giver_npc_8_n);
	
	mission_giver_npc_9_n = ConvoScreen:new {
		id = "npc_9_n",
		leftDialog = ":npc_9_1",
		stopConversation = "false",
		options = {
			{ ":player_1_1", "accept" },
			{ ":player_2_1", "npc_3_n" },
			{ ":player_3_1", "npc_4_n" },
			{ ":player_4_1", "npc_5_n" }
		}
	}

	mission_giver_convotemplate:addScreen(mission_giver_npc_9_n);
	
	mission_giver_npc_10_n = ConvoScreen:new {
		id = "npc_10_n",
		leftDialog = ":npc_10_1",
		stopConversation = "false",
		options = {
			{ ":player_1_1", "accept" },
			{ ":player_2_1", "npc_3_n" },
			{ ":player_3_1", "npc_4_n" },
			{ ":player_4_1", "npc_5_n" }
		}
	}

	mission_giver_convotemplate:addScreen(mission_giver_npc_10_n);

	mission_giver_status = ConvoScreen:new {
		id = "status",
		leftDialog = "",
		stopConversation = "false",
		options = {
		}
	}

	mission_giver_convotemplate:addScreen(mission_giver_status);

	mission_giver_npc_work_n = ConvoScreen:new {
		id = "npc_work_n",
		leftDialog = ":npc_work_1",
		stopConversation = "false",
		options = {
			{ ":player_reset_1", "npc_reset_n" },
			{ ":player_sorry_1", "npc_backtowork_n" }
		}
	}

	mission_giver_convotemplate:addScreen(mission_giver_npc_work_n);

	mission_giver_npc_reset_n = ConvoScreen:new {
		id = "npc_reset_n",
		leftDialog = ":npc_reset_1",
		stopConversation = "true",
		options = {
		}
	}

	mission_giver_convotemplate:addScreen(mission_giver_npc_reset_n);

	mission_giver_npc_reset = ConvoScreen:new {
		id = "npc_reset",
		leftDialog = ":npc_reset",
		stopConversation = "true",
		options = {
		}
	}

	mission_giver_convotemplate:addScreen(mission_giver_npc_reset);

	mission_giver_npc_backtowork_n = ConvoScreen:new {
		id = "npc_backtowork_n",
		leftDialog = ":npc_backtowork_1",
		stopConversation = "true",
		options = {
		}
	}

	mission_giver_convotemplate:addScreen(mission_giver_npc_backtowork_n);

	mission_giver_npc_backtowork = ConvoScreen:new {
		id = "npc_backtowork",
		leftDialog = ":npc_backtowork",
		stopConversation = "true",
		options = {
		}
	}

	mission_giver_convotemplate:addScreen(mission_giver_npc_backtowork);

	mission_giver_npc_reward_n = ConvoScreen:new {
		id = "npc_reward_n",
		leftDialog = ":npc_reward_1",
		stopConversation = "true",
		options = {
		}
	}

	mission_giver_convotemplate:addScreen(mission_giver_npc_reward_n);

	mission_giver_quit_quest = ConvoScreen:new {
		id = "quit_quest",
		leftDialog = "@static_npc/default_dialog:quit_quest", -- I can see that you're busy working for someone else at the moment. Would you like to continue to do so, or would you like to work for me instead?
		stopConversation = "false",
		options = {
			{ "@static_npc/default_dialog:player_quit", "npc_quit" }, -- I think I'd like to work for you.
			{ "@static_npc/default_dialog:player_continue", "npc_continue" } -- No, I think I'll keep my current job, thanks.
		}
	}

	mission_giver_convotemplate:addScreen(mission_giver_quit_quest);

	mission_giver_npc_quit = ConvoScreen:new {
		id = "npc_quit",
		leftDialog = "@static_npc/default_dialog:npc_quit", -- Fine. You are now free of your prior obligation, and you can freely work for me.
		stopConversation = "true",
		options = {}
	}

	mission_giver_convotemplate:addScreen(mission_giver_npc_quit);

	mission_giver_npc_continue = ConvoScreen:new {
		id = "npc_continue",
		leftDialog = "@static_npc/default_dialog:npc_continue", -- Fine then. Don't bother with me until you're ready to work for me.
		stopConversation = "true",
		options = {}
	}

	mission_giver_convotemplate:addScreen(mission_giver_npc_continue);

	addConversationTemplate(templateName, mission_giver_convotemplate);
end

-- Themeparks
--createMissionGiverConvoTemplate("underworld_beginnings_mission_giver_convotemplate", "underworld_beginnings_mission_giver_conv_handler")

