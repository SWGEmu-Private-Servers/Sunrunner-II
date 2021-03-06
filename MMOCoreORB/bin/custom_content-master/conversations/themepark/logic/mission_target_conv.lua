function createMissionTargetConvoTemplate(templateName, convoHandler)
	mission_target_convotemplate = ConvoTemplate:new {
		initialScreen = "npc_breech_n",
		templateType = "Lua",
		luaClassHandler = convoHandler,
		screens = {}
	}

	mission_target_npc_breech_n = ConvoScreen:new {
		id = "npc_breech_n",
		leftDialog = ":npc_breech_1",
		stopConversation = "true",
		options = {
		}
	}

	mission_target_convotemplate:addScreen(mission_target_npc_breech_n);

	mission_target_invfull = ConvoScreen:new {
		id = "inv_full",
		leftDialog = "",
		stopConversation = "false",
		options = {
		}
	}

	mission_target_convotemplate:addScreen(mission_target_invfull);

	mission_target_npc_smuggle_n = ConvoScreen:new {
		id = "npc_smuggle_n",
		leftDialog = ":npc_smuggle_1",
		stopConversation = "true",
		options = {
		}
	}

	mission_target_convotemplate:addScreen(mission_target_npc_smuggle_n);

	mission_target_npc_more_1_n = ConvoScreen:new {
		id = "npc_more_1_n",
		leftDialog = ":npc_more_1_1",
		stopConversation = "true",
		options = {
		}
	}

	mission_target_convotemplate:addScreen(mission_target_npc_more_1_n);

	mission_target_npc_more_2_n = ConvoScreen:new {
		id = "npc_more_2_n",
		leftDialog = ":npc_more_2_1",
		stopConversation = "true",
		options = {
		}
	}

	mission_target_convotemplate:addScreen(mission_target_npc_more_2_n);

	mission_target_npc_more_3_n = ConvoScreen:new {
		id = "npc_more_3_n",
		leftDialog = ":npc_more_3_1",
		stopConversation = "true",
		options = {
		}
	}

	mission_target_convotemplate:addScreen(mission_target_npc_more_3_n);

	mission_target_npc_takeme_n = ConvoScreen:new {
		id = "npc_takeme_n",
		leftDialog = ":npc_takeme_1",
		stopConversation = "true",
		options = {
		}
	}

	mission_target_convotemplate:addScreen(mission_target_npc_takeme_n);

	mission_target_dontknowyou_n = ConvoScreen:new {
		id = "dontknowyou_n",
		leftDialog = ":dontknowyou_1",
		stopConversation = "true",
		options = {
		}
	}

	mission_target_convotemplate:addScreen(mission_target_dontknowyou_n);

	mission_target_otherescort_n = ConvoScreen:new {
		id = "otherescort_n",
		leftDialog = ":otherescort_1",
		stopConversation = "true",
		options = {
		}
	}

	mission_target_convotemplate:addScreen(mission_target_otherescort_n);

	mission_target_notit_n = ConvoScreen:new {
		id = "notit_n",
		leftDialog = ":notit_1",
		stopConversation = "true",
		options = {
		}
	}

	mission_target_convotemplate:addScreen(mission_target_notit_n);

	addConversationTemplate(templateName, mission_target_convotemplate);
end

-- Tatooine
createMissionTargetConvoTemplate("underworld_beginnings_mission_target_convotemplate","underworld_beginnings_mission_target_conv_handler")


