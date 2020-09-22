local ObjectManager = require("managers.object.object_manager")

local QuestManager = {}

local QUEST_ACTIVE = 1
local QUEST_COMPLETED = 1

-- Activate the quest for the player.
-- @param pCreatureObject pointer to the creature object of the player.
-- @param quest the index number for the quest to activate.
function QuestManager.activateQuest(pCreatureObject, quest)
	local pGhost = CreatureObject(pCreatureObject):getPlayerObject()

	if (pGhost == nil) then
		return
	end

	if (QuestManager.shouldSendSystemMessage(pCreatureObject, quest)) then
		CreatureObject(pCreatureObject):sendSystemMessage("@quest/quests:quest_journal_updated")
	end

	PlayerObject(pGhost):setActiveQuestsBit(quest, QUEST_ACTIVE)
end

-- Checks if the player has a quest active.
-- @param pCreatureObject pointer to the creature object of the player.
-- @param quest the index number for the quest to check if it is active.
function QuestManager.hasActiveQuest(pCreatureObject, quest)
	local pGhost = CreatureObject(pCreatureObject):getPlayerObject()

	if (pGhost == nil) then
		return false
	end

	return PlayerObject(pGhost):hasActiveQuestBitSet(quest)
end

-- Complete the quest for the player.
-- @param pCreatureObject pointer to the creature object of the player.
-- @param quest the index number for the quest to complete.
function QuestManager.completeQuest(pCreatureObject, quest)
	local pGhost = CreatureObject(pCreatureObject):getPlayerObject()

	if (pGhost == nil) then
		return
	end

	if (QuestManager.shouldSendSystemMessage(pCreatureObject, quest)) then
		local summary = QuestManager.getJournalSummary(quest)

		if (summary ~= "") then
			CreatureObject(pCreatureObject):sendSystemMessage(summary)
		end

		CreatureObject(pCreatureObject):sendSystemMessage("@quest/quests:task_complete")
	end

	PlayerObject(pGhost):clearActiveQuestsBit(quest)
	PlayerObject(pGhost):setCompletedQuestsBit(quest, QUEST_COMPLETED)
end

-- Un-Complete the quest for the player and set quest active again.
-- @param pCreatureObject pointer to the creature object of the player.
-- @param quest the index number for the quest to complete.
function QuestManager.uncompleteQuest(pCreatureObject, quest)
	local pGhost = CreatureObject(pCreatureObject):getPlayerObject()

	if (pGhost == nil) then
		return
	end

	PlayerObject(pGhost):clearCompletedQuestsBit(quest)
	PlayerObject(pGhost):setActiveQuestsBit(quest, QUEST_ACTIVE)
end

-- Checks if the player has a quest completed.
-- @param pCreatureObject pointer to the creature object of the player.
-- @param quest the index number for the quest to check if it is completed.
function QuestManager.hasCompletedQuest(pCreatureObject, quest)
	local pGhost = CreatureObject(pCreatureObject):getPlayerObject()

	if (pGhost == nil) then
		return false
	end

	return PlayerObject(pGhost):hasCompletedQuestsBitSet(quest)
end

-- Reset the quest for the player.
-- @param pCreatureObject pointer to the creature object of the player.
-- @param quest the index number for the quest to reset.
function QuestManager.resetQuest(pCreatureObject, quest)
	local pGhost = CreatureObject(pCreatureObject):getPlayerObject()

	if (pGhost == nil) then
		return
	end

	PlayerObject(pGhost):clearActiveQuestsBit(quest)
	PlayerObject(pGhost):clearCompletedQuestsBit(quest)
end

function QuestManager.failQuest(pCreatureObject, quest)
	if (QuestManager.shouldSendSystemMessage(pCreatureObject, quest)) then
		CreatureObject(pCreatureObject):sendSystemMessage("@quest/quests:task_failure")
	end

	QuestManager.resetQuest(pCreatureObject, quest)
end

function QuestManager.shouldSendSystemMessage(pCreatureObject, quest)
	local pQuest = getQuestInfo(quest)

	if (pQuest == nil) then
		return false
	end

	return LuaQuestInfo(pQuest):shouldSendSystemMessage()
end

function QuestManager.getQuestName(questID)
	local pQuest = getQuestInfo(questID)

	if (pQuest == nil) then
		return ""
	end

	return LuaQuestInfo(pQuest):getQuestName()
end

function QuestManager.getJournalSummary(questID)
	local pQuest = getQuestInfo(questID)

	if (pQuest == nil) then
		return ""
	end

	return LuaQuestInfo(pQuest):getJournalSummary()
end

function QuestManager.getCurrentQuestID(pPlayer)
	local id = tonumber(readScreenPlayData(pPlayer, "VillageJediProgression", "CurrentQuestID"))

	if (id == nil) then
		id = -1
	end

	return id
end

function QuestManager.setCurrentQuestID(pPlayer, qid)
	return writeScreenPlayData(pPlayer, "VillageJediProgression", "CurrentQuestID", qid)
end

function QuestManager.getStoredVillageValue(pPlayer, key)
	return readScreenPlayData(pPlayer, "VillageJediProgression", key)
end

function QuestManager.setStoredVillageValue(pPlayer, key, value)
	return writeScreenPlayData(pPlayer, "VillageJediProgression", key, value)
end

QuestManager.quests = {}

QuestManager.quests.TEST_SIMPLE 			= 0
QuestManager.quests.TEST_GOTO_01 			= 1
QuestManager.quests.TEST_GOTO_02 			= 2
QuestManager.quests.TEST_GOTO_03 			= 3
QuestManager.quests.TEST_FIND_01 			= 4
QuestManager.quests.TEST_ENCOUNTER_01 			= 5
QuestManager.quests.TEST_DESTROY_01 			= 6
QuestManager.quests.TEST_ESCORT_01 			= 7
QuestManager.quests.TEST_ESCORT_LOCATION 		= 8
QuestManager.quests.TEST_RANDOM 			= 9
QuestManager.quests.TEST_GIVE 				= 10
QuestManager.quests.SCT1 				= 11
QuestManager.quests.SCT2 				= 12
QuestManager.quests.SCT3 				= 13
QuestManager.quests.SCT4 				= 14
QuestManager.quests.FS_QUESTS_SAD_TASKS 		= 15
QuestManager.quests.FS_QUESTS_SAD_TASK1 		= 16
QuestManager.quests.FS_QUESTS_SAD_RETURN1 		= 17
QuestManager.quests.FS_QUESTS_SAD_TASK2 		= 18
QuestManager.quests.FS_QUESTS_SAD_RETURN2 		= 19
QuestManager.quests.FS_QUESTS_SAD_TASK3 		= 20
QuestManager.quests.FS_QUESTS_SAD_RETURN3 		= 21
QuestManager.quests.FS_QUESTS_SAD_TASK4 		= 22
QuestManager.quests.FS_QUESTS_SAD_RETURN4 		= 23
QuestManager.quests.FS_QUESTS_SAD_TASK5 		= 24
QuestManager.quests.FS_QUESTS_SAD_RETURN5 		= 25
QuestManager.quests.FS_QUESTS_SAD_TASK6 		= 26
QuestManager.quests.FS_QUESTS_SAD_RETURN6 		= 27
QuestManager.quests.FS_QUESTS_SAD_TASK7 		= 28
QuestManager.quests.FS_QUESTS_SAD_RETURN7 		= 29
QuestManager.quests.FS_QUESTS_SAD_TASK8 		= 30
QuestManager.quests.FS_QUESTS_SAD_RETURN8 		= 31
QuestManager.quests.FS_QUESTS_SAD_FINISH 		= 32
QuestManager.quests.FS_QUESTS_SAD2_TASKS 		= 33
QuestManager.quests.FS_QUESTS_SAD2_TASK1		= 34
QuestManager.quests.FS_QUESTS_SAD2_RETURN1 		= 35
QuestManager.quests.FS_QUESTS_SAD2_TASK2 		= 36
QuestManager.quests.FS_QUESTS_SAD2_RETURN2 		= 37
QuestManager.quests.FS_QUESTS_SAD2_TASK3 		= 38
QuestManager.quests.FS_QUESTS_SAD2_RETURN3 		= 39
QuestManager.quests.FS_QUESTS_SAD2_TASK4 		= 40
QuestManager.quests.FS_QUESTS_SAD2_RETURN4 		= 41
QuestManager.quests.FS_QUESTS_SAD2_TASK5 		= 42
QuestManager.quests.FS_QUESTS_SAD2_RETURN5 		= 43
QuestManager.quests.FS_QUESTS_SAD2_TASK6 		= 44
QuestManager.quests.FS_QUESTS_SAD2_RETURN6 		= 45
QuestManager.quests.FS_QUESTS_SAD2_TASK7 		= 46
QuestManager.quests.FS_QUESTS_SAD2_RETURN7 		= 47
QuestManager.quests.FS_QUESTS_SAD2_TASK8 		= 48
QuestManager.quests.FS_QUESTS_SAD2_RETURN8 		= 49
QuestManager.quests.FS_QUESTS_SAD2_FINISH 		= 50
QuestManager.quests.FS_MEDIC_PUZZLE_QUEST_01 		= 51
QuestManager.quests.FS_MEDIC_PUZZLE_QUEST_02 		= 52
QuestManager.quests.FS_MEDIC_PUZZLE_QUEST_03 		= 53
QuestManager.quests.FS_PHASE_2_CRAFT_DEFENSES_02 	= 54
QuestManager.quests.FS_PHASE_3_CRAFT_SHIELDS_02 	= 55
QuestManager.quests.FS_REFLEX_RESCUE_QUEST_00 		= 56
QuestManager.quests.FS_REFLEX_RESCUE_QUEST_01 		= 57
QuestManager.quests.FS_REFLEX_RESCUE_QUEST_02 		= 58
QuestManager.quests.FS_REFLEX_RESCUE_QUEST_03 		= 59
QuestManager.quests.FS_REFLEX_RESCUE_QUEST_04 		= 60
QuestManager.quests.FS_REFLEX_RESCUE_QUEST_05 		= 61
QuestManager.quests.FS_REFLEX_RESCUE_QUEST_06 		= 62
QuestManager.quests.FS_REFLEX_FETCH_QUEST_00 		= 63
QuestManager.quests.FS_REFLEX_FETCH_QUEST_01 		= 64
QuestManager.quests.FS_REFLEX_FETCH_QUEST_02 		= 65
QuestManager.quests.FS_REFLEX_FETCH_QUEST_03 		= 66
QuestManager.quests.FS_REFLEX_FETCH_QUEST_04 		= 67
QuestManager.quests.FS_REFLEX_FETCH_QUEST_05 		= 68
QuestManager.quests.FS_REFLEX_FETCH_QUEST_06 		= 69
QuestManager.quests.FS_CRAFT_PUZZLE_QUEST_00 		= 70
QuestManager.quests.FS_CRAFT_PUZZLE_QUEST_01 		= 71
QuestManager.quests.FS_CRAFT_PUZZLE_QUEST_02 		= 72
QuestManager.quests.FS_CRAFT_PUZZLE_QUEST_03 		= 73
QuestManager.quests.OLD_MAN_INITIAL 			= 74
QuestManager.quests.FS_THEATER_CAMP 			= 75
QuestManager.quests.DO_NOT_USE_BAD_SLOT 		= 76
QuestManager.quests.FS_GOTO_DATH 			= 77
QuestManager.quests.FS_VILLAGE_ELDER 			= 78
QuestManager.quests.OLD_MAN_FORCE_CRYSTAL 		= 79
QuestManager.quests.FS_DATH_WOMAN 			= 80
QuestManager.quests.FS_PATROL_QUEST_1 			= 81
QuestManager.quests.FS_PATROL_QUEST_2 			= 82
QuestManager.quests.FS_PATROL_QUEST_3 			= 83
QuestManager.quests.FS_PATROL_QUEST_4 			= 84
QuestManager.quests.FS_PATROL_QUEST_5 			= 85
QuestManager.quests.FS_PATROL_QUEST_6 			= 86
QuestManager.quests.FS_PATROL_QUEST_7 			= 87
QuestManager.quests.FS_PATROL_QUEST_8 			= 88
QuestManager.quests.FS_PATROL_QUEST_9 			= 89
QuestManager.quests.FS_PATROL_QUEST_10 			= 90
QuestManager.quests.FS_PATROL_QUEST_11 			= 91
QuestManager.quests.FS_PATROL_QUEST_12 			= 92
QuestManager.quests.FS_PATROL_QUEST_13 			= 93
QuestManager.quests.FS_PATROL_QUEST_14 			= 94
QuestManager.quests.FS_PATROL_QUEST_15 			= 95
QuestManager.quests.FS_PATROL_QUEST_16 			= 96
QuestManager.quests.FS_PATROL_QUEST_17 			= 97
QuestManager.quests.FS_PATROL_QUEST_18 			= 98
QuestManager.quests.FS_PATROL_QUEST_19 			= 99
QuestManager.quests.FS_PATROL_QUEST_20 			= 100
QuestManager.quests.FS_COMBAT_HEALING_1 		= 101
QuestManager.quests.FS_COMBAT_HEALING_2 		= 102
QuestManager.quests.FS_DEFEND_SET_FACTION 		= 103
QuestManager.quests.FS_DEFEND_01 			= 104
QuestManager.quests.FS_DEFEND_02 			= 105
QuestManager.quests.FS_DEFEND_REwARD_01 		= 106
QuestManager.quests.FS_DEFEND_03 			= 107
QuestManager.quests.FS_DEFEND_04 			= 108
QuestManager.quests.FS_CS_INTRO 			= 109
QuestManager.quests.FS_CS_KILL5_GUARDS 			= 110
QuestManager.quests.FS_CS_ENSURE_CAPTURE 		= 111
QuestManager.quests.FS_CS_LAST_CHANCE 			= 112
QuestManager.quests.FS_CS_ESCORT_COMMANDER_PRI 		= 113
QuestManager.quests.FS_CS_ESCORT_COMMANDER_SEC 		= 114
QuestManager.quests.FS_CS_QUEST_DONE 			= 115
QuestManager.quests.FS_THEATER_FINAL 			= 116
QuestManager.quests.OLD_MAN_FINAL 			= 117
QuestManager.quests.FS_CRAFTING4_QUEST_00 		= 118
QuestManager.quests.FS_CRAFTING4_QUEST_01 		= 119
QuestManager.quests.FS_CRAFTING4_QUEST_02 		= 120
QuestManager.quests.FS_CRAFTING4_QUEST_03 		= 121
QuestManager.quests.FS_CRAFTING4_QUEST_04 		= 122
QuestManager.quests.FS_CRAFTING4_QUEST_05 		= 123
QuestManager.quests.FS_CRAFTING4_QUEST_06 		= 124
QuestManager.quests.FS_CRAFTING4_QUEST_07 		= 125
QuestManager.quests.TWO_MILITARY 			= 126
QuestManager.quests.FS_DEFEND_REwARD_02 		= 127
QuestManager.quests.FS_DEFEND_REwARD_03 		= 128
QuestManager.quests.SURVEY_PHASE2_MAIN 			= 129
QuestManager.quests.SURVEY_PHASE2_01 			= 130
QuestManager.quests.SURVEY_PHASE2_02 			= 131
QuestManager.quests.SURVEY_PHASE2_03 			= 132
QuestManager.quests.SURVEY_PHASE2_04 			= 133
QuestManager.quests.SURVEY_PHASE2_05 			= 134
QuestManager.quests.SURVEY_PHASE2_06 			= 135
QuestManager.quests.SURVEY_PHASE2_07 			= 136
QuestManager.quests.SURVEY_PHASE2_08 			= 137
QuestManager.quests.SURVEY_PHASE3_MAIN 			= 138
QuestManager.quests.SURVEY_PHASE3_01 			= 139
QuestManager.quests.SURVEY_PHASE3_02 			= 140
QuestManager.quests.SURVEY_PHASE3_03 			= 141
QuestManager.quests.SURVEY_PHASE3_04 			= 142
QuestManager.quests.SURVEY_PHASE3_05 			= 143
QuestManager.quests.SURVEY_PHASE3_06 			= 144
QuestManager.quests.SURVEY_PHASE3_07 			= 145
QuestManager.quests.SURVEY_PHASE3_08 			= 146
QuestManager.quests.FS_SURVEY_SPECIAL_RESOURCE_01 	= 147
QuestManager.quests.FS_SURVEY_SPECIAL_RESOURCE_02 	= 148
QuestManager.quests.FS_SURVEY_SPECIAL_RESOURCE_03 	= 149
QuestManager.quests.FS_SURVEY_SPECIAL_RESOURCE_04 	= 150
QuestManager.quests.FS_SURVEY_SPECIAL_RESOURCE_05 	= 151
QuestManager.quests.FS_SURVEY_SPECIAL_RESOURCE_06 	= 152
QuestManager.quests.FS_SURVEY_SPECIAL_RESOURCE_07 	= 153
QuestManager.quests.FS_SURVEY_SPECIAL_RESOURCE_08 	= 154
QuestManager.quests.FS_SURVEY_SPECIAL_RESOURCE_09 	= 155
QuestManager.quests.FS_SURVEY_SPECIAL_RESOURCE_10 	= 156
QuestManager.quests.FS_SURVEY_SPECIAL_RESOURCE_11 	= 157
QuestManager.quests.FS_SURVEY_SPECIAL_RESOURCE_12 	= 158
QuestManager.quests.FS_SURVEY_SPECIAL_RESOURCE_13 	= 159
QuestManager.quests.FS_SURVEY_SPECIAL_RESOURCE_14 	= 160
QuestManager.quests.FS_SURVEY_SPECIAL_RESOURCE_15 	= 161
QuestManager.quests.FS_SURVEY_SPECIAL_RESOURCE_16 	= 162
QuestManager.quests.FS_DATH_wOMAN_TALK 			= 163
QuestManager.quests.FS_PATROL_QUEST_START 		= 164
QuestManager.quests.FS_REFLEX_RESCUE_QUEST_07 		= 165
QuestManager.quests.FS_SURVEY_PHASE2_REwARD 		= 166
QuestManager.quests.FS_SURVEY_PHASE3_REwARD 		= 167
QuestManager.quests.FS_DEFEND_SET_FACTION_02 		= 168
QuestManager.quests.LOOT_DATAPAD_1 			= 169
QuestManager.quests.GOT_DATAPAD 			= 170
QuestManager.quests.FS_PHASE_2_CRAFT_DEFENSES_01 	= 171
QuestManager.quests.FS_PHASE_3_CRAFT_SHIELDS_01 	= 172
QuestManager.quests.FS_PHASE_2_CRAFT_DEFENSES_MAIN 	= 173
QuestManager.quests.FS_PHASE_3_CRAFT_SHIELDS_MAIN 	= 174
QuestManager.quests.LOOT_DATAPAD_2 			= 175
QuestManager.quests.GOT_DATAPAD_2 			= 176
QuestManager.quests.FS_CS_QUEST_FAILED_ESCORT 		= 177
QuestManager.quests.FS_PATROL_QUEST_FINISH 		= 178
QuestManager.quests.FS_MEDIC_PUZZLE_QUEST_FINISH 	= 179
QuestManager.quests.FS_COMBAT_HEALING_FINISH 		= 180
QuestManager.quests.FS_COMBAT_REWARD_PHASE2 		= 181
QuestManager.quests.FS_REFLEX_REWARD_PHASE3 		= 182
QuestManager.quests.FS_DEFEND_WAIT_01 			= 183
QuestManager.quests.FS_DEFEND_WAIT_02 			= 184
QuestManager.quests.FS_CRAFTING4_QUEST_FINISH 		= 185
QuestManager.quests.FS_CRAFT_PUZZLE_QUEST_04 		= 186
QuestManager.quests.FS_CS_QUEST_DONE_NOTIFYONLY 	= 187
QuestManager.quests.SOM_BERKENS_FLOW_MARKERS		= 188
QuestManager.quests.SOM_BERKENS_FLOW_MARKERS_01		= 189
QuestManager.quests.SOM_BERKENS_FLOW_MARKERS_02		= 190
QuestManager.quests.SOM_BERKENS_FLOW_MARKERS_03		= 191
QuestManager.quests.SOM_BERKENS_FLOW_MARKERS_04		= 192
QuestManager.quests.SOM_BERKENS_FLOW_MARKERS_05		= 193
QuestManager.quests.SOM_BERKENS_FLOW			= 194
QuestManager.quests.SOM_MINING_FIELD_MARKERS		= 195
QuestManager.quests.SOM_MINING_FIELD_MARKERS_01		= 196
QuestManager.quests.SOM_MINING_FIELD_MARKERS_02		= 197
QuestManager.quests.SOM_MINING_FIELD_MARKERS_03		= 198
QuestManager.quests.SOM_MINING_FIELD_MARKERS_04		= 199
QuestManager.quests.SOM_MINING_FIELD_MARKERS_05		= 200
QuestManager.quests.SOM_MINING_FIELD			= 201
QuestManager.quests.SOM_CRYSTAL_FLATS_MARKERS		= 202
QuestManager.quests.SOM_CRYSTAL_FLATS_MARKERS_01	= 203
QuestManager.quests.SOM_CRYSTAL_FLATS_MARKERS_02	= 204
QuestManager.quests.SOM_CRYSTAL_FLATS_MARKERS_03	= 205
QuestManager.quests.SOM_CRYSTAL_FLATS_MARKERS_04	= 206
QuestManager.quests.SOM_CRYSTAL_FLATS_MARKERS_05	= 207
QuestManager.quests.SOM_CRYSTAL_FLATS			= 208
QuestManager.quests.SOM_SMOKING_FOREST_MARKERS		= 209
QuestManager.quests.SOM_SMOKING_FOREST_MARKERS_01	= 210
QuestManager.quests.SOM_SMOKING_FOREST_MARKERS_02	= 211
QuestManager.quests.SOM_SMOKING_FOREST_MARKERS_03	= 212
QuestManager.quests.SOM_SMOKING_FOREST_MARKERS_04	= 213
QuestManager.quests.SOM_SMOKING_FOREST_MARKERS_05	= 214
QuestManager.quests.SOM_SMOKING_FOREST			= 215
QuestManager.quests.SOM_CENTRAL_VOLCANO_MARKERS		= 216
QuestManager.quests.SOM_CENTRAL_VOLCANO_MARKERS_01	= 217
QuestManager.quests.SOM_CENTRAL_VOLCANO_MARKERS_02	= 218
QuestManager.quests.SOM_CENTRAL_VOLCANO_MARKERS_03	= 219
QuestManager.quests.SOM_CENTRAL_VOLCANO			= 220
QuestManager.quests.SOM_BURNING_PLAINS_MARKERS		= 221
QuestManager.quests.SOM_BURNING_PLAINS_MARKERS_01	= 222
QuestManager.quests.SOM_BURNING_PLAINS_MARKERS_02	= 223
QuestManager.quests.SOM_BURNING_PLAINS_MARKERS_03	= 224
QuestManager.quests.SOM_BURNING_PLAINS_MARKERS_04	= 225
QuestManager.quests.SOM_BURNING_PLAINS_MARKERS_05	= 226
QuestManager.quests.SOM_BURNING_PLAINS			= 227
QuestManager.quests.SOM_NESTING_GROUNDS_MARKERS		= 228
QuestManager.quests.SOM_NESTING_GROUNDS_MARKERS_01	= 229
QuestManager.quests.SOM_NESTING_GROUNDS_MARKERS_01	= 230
QuestManager.quests.SOM_NESTING_GROUNDS_MARKERS_01	= 231
QuestManager.quests.SOM_NESTING_GROUNDS			= 232
QuestManager.quests.BUILD_SPEEDER			= 233
QuestManager.quests.BUILD_SPEEDER_01			= 234
QuestManager.quests.BUILD_SPEEDER_02			= 235
QuestManager.quests.BUILD_SPEEDER_03			= 236
QuestManager.quests.BUILD_SPEEDER_04			= 237
QuestManager.quests.BUILD_SPEEDER_COMPLETE		= 238
QuestManager.quests.BIBS_OFFER				= 239
QuestManager.quests.COL_TAT_VISTAS			= 240
QuestManager.quests.COL_TAT_VISTAS_01			= 241
QuestManager.quests.COL_TAT_VISTAS_02			= 242
QuestManager.quests.COL_TAT_VISTAS_03			= 243
QuestManager.quests.COL_TAT_VISTAS_04			= 244
QuestManager.quests.COL_TAT_VISTAS_05			= 245
QuestManager.quests.COL_TAT_VISTAS_06			= 246
QuestManager.quests.COL_TAT_VISTAS_07			= 247
QuestManager.quests.COL_TAT_VISTAS_08			= 248
QuestManager.quests.COL_TAT_VISTAS_09			= 249
QuestManager.quests.COL_TAT_VISTAS_10			= 250
QuestManager.quests.GTOUR_01				= 251
QuestManager.quests.GTOUR_01_A				= 252
QuestManager.quests.GTOUR_01_B				= 253
QuestManager.quests.GTOUR_01_C				= 254
QuestManager.quests.GTOUR_01_D				= 255
QuestManager.quests.GTOUR_01_E				= 256
QuestManager.quests.ME_TUSKEN_RAIDERS			= 257
QuestManager.quests.ME_TUSKEN_RAIDERS_01		= 258
QuestManager.quests.ME_TUSKEN_RAIDERS_02		= 259
QuestManager.quests.ME_TUSKEN_RAIDERS_03		= 260
QuestManager.quests.ME_TUSKEN_RAIDERS_04		= 261
QuestManager.quests.ME_TUSKEN_RAIDERS_05		= 262
QuestManager.quests.ME_TUSKEN_RAIDERS_06		= 263
QuestManager.quests.ME_TUSKEN_RAIDERS_07		= 264
QuestManager.quests.ME_TUSKEN_RAIDERS_08		= 265
QuestManager.quests.ME_TUSKEN_RAIDERS_09		= 266
QuestManager.quests.ME_TUSKEN_RAIDERS_10		= 267
QuestManager.quests.ME_TUSKEN_RAIDERS_11		= 268
QuestManager.quests.BIBS_OFFER_01			= 269
QuestManager.quests.BIBS_OFFER_02			= 270
QuestManager.quests.BIBS_OFFER_03			= 271
QuestManager.quests.BIBS_OFFER_04			= 272
QuestManager.quests.BIBS_OFFER_SILENT			= 273
QuestManager.quests.ANIMAL_CONTROL_OFFICER		= 274
QuestManager.quests.ANIMAL_CONTROL_OFFICER_01		= 275
QuestManager.quests.ANIMAL_CONTROL_OFFICER_02		= 276
QuestManager.quests.ANIMAL_CONTROL_OFFICER_03		= 277
QuestManager.quests.ANIMAL_CONTROL_OFFICER_04		= 278
QuestManager.quests.ANIMAL_CONTROL_OFFICER_05		= 279
QuestManager.quests.ANIMAL_CONTROL_OFFICER_06		= 280
QuestManager.quests.ANIMAL_CONTROL_OFFICER_07		= 281
QuestManager.quests.ANIMAL_CONTROL_OFFICER_08		= 282
QuestManager.quests.HOODLUMS_EVERYWHERE			= 283
QuestManager.quests.HOODLUMS_EVERYWHERE_01		= 284
QuestManager.quests.HOODLUMS_EVERYWHERE_02		= 285
QuestManager.quests.HOODLUMS_EVERYWHERE_03		= 286
QuestManager.quests.HOODLUMS_EVERYWHERE_04		= 287
QuestManager.quests.HOODLUMS_EVERYWHERE_05		= 288
QuestManager.quests.HOODLUMS_EVERYWHERE_06		= 289
QuestManager.quests.HOODLUMS_EVERYWHERE_07		= 290
QuestManager.quests.HOODLUMS_EVERYWHERE_08		= 291
QuestManager.quests.HOODLUMS_EVERYWHERE_09		= 292
QuestManager.quests.HOODLUMS_EVERYWHERE_10		= 293
QuestManager.quests.HOODLUMS_EVERYWHERE_11		= 294
QuestManager.quests.HOODLUMS_EVERYWHERE_12		= 295
QuestManager.quests.HOODLUMS_EVERYWHERE_13		= 296
QuestManager.quests.HOODLUMS_EVERYWHERE_14		= 297
QuestManager.quests.YGUN_01	 			= 298
QuestManager.quests.YGUN_01_A	 			= 299
QuestManager.quests.YGUN_01_B	 			= 300
QuestManager.quests.YGUN_01_C	 			= 301
QuestManager.quests.YGUN_01_D	 			= 302
QuestManager.quests.YGUN_01_E	 			= 303
QuestManager.quests.YGUN_01_F	 			= 304
QuestManager.quests.YGUN_01_G	 			= 305
QuestManager.quests.YGUN_01_H	 			= 306
QuestManager.quests.YGUN_01_I	 			= 307
QuestManager.quests.YGUN_01_J	 			= 308
QuestManager.quests.YGUN_01_K	 			= 309
QuestManager.quests.YGUN_01_L	 			= 310
QuestManager.quests.YGUN_01_M	 			= 311
QuestManager.quests.CODEX_01		 		= 312
QuestManager.quests.CODEX_01_A	 			= 313
QuestManager.quests.CODEX_01_B	 			= 314
QuestManager.quests.CODEX_01_C	 			= 315
QuestManager.quests.CODEX_01_D 				= 316
QuestManager.quests.YGUN_01_AA	 			= 317
QuestManager.quests.YGUN_01_AB	 			= 318
QuestManager.quests.YGUN_01_AC	 			= 319
QuestManager.quests.YGUN_01_AD	 			= 320
QuestManager.quests.AS_INF02	 			= 321
QuestManager.quests.AS_INF02_BCEP	 		= 322
QuestManager.quests.AS_INF02_HELM	 		= 323
QuestManager.quests.AS_INF02_CHST	 		= 324				
QuestManager.quests.AS_INF02_BOOT	 		= 325
QuestManager.quests.AS_INF02_LEGS			= 326
QuestManager.quests.ARCH_SCHEM				= 327
QuestManager.quests.ARCH_SCHEM01			= 328
QuestManager.quests.ARCH_SCHEM01A			= 329
QuestManager.quests.ARCH_SCHEM01B			= 330
QuestManager.quests.ARCH_SCHEM02			= 331
QuestManager.quests.ARCH_SCHEM02A			= 332
QuestManager.quests.ARCH_SCHEM02B			= 333
QuestManager.quests.ARCH_SCHEM02C	 		= 334
QuestManager.quests.ARCH_SCHEM02D 			= 335
QuestManager.quests.ARCH_SCHEM02E 			= 336
QuestManager.quests.ARCH_SCHEM03			= 337
QuestManager.quests.ARCH_SCHEM03A			= 338
QuestManager.quests.ARCH_SCHEM03B			= 339
QuestManager.quests.ARCH_SCHEM04			= 340
QuestManager.quests.ARCH_SCHEM04A			= 341
QuestManager.quests.ARCH_SCHEM04B			= 342
QuestManager.quests.ARCH_SCHEM04C	 		= 343
QuestManager.quests.ARCH_SCHEM04D 			= 344
QuestManager.quests.ARCH_SCHEM04E 			= 345
QuestManager.quests.IMPRISONED_GEONOSIAN_PT1		= 346
QuestManager.quests.IMPRISONED_GEONOSIAN_PT1_01		= 347
QuestManager.quests.IMPRISONED_GEONOSIAN_PT1_02		= 348	
QuestManager.quests.IMPRISONED_GEONOSIAN_PT1_03		= 349
QuestManager.quests.IMPRISONED_GEONOSIAN_PT2		= 350
QuestManager.quests.IMPRISONED_GEONOSIAN_PT2_01		= 351
QuestManager.quests.IMPRISONED_GEONOSIAN_PT2_02		= 352
QuestManager.quests.IMPRISONED_GEONOSIAN_PT2_03		= 353
QuestManager.quests.IMPRISONED_GEONOSIAN_PT3		= 354
QuestManager.quests.IMPRISONED_GEONOSIAN_PT3_01		= 355
QuestManager.quests.IMPRISONED_GEONOSIAN_PT3_02		= 356
QuestManager.quests.AVENGING_MORT 			=357
QuestManager.quests.AVENGING_MORT_01		=358
QuestManager.quests.AVENGING_MORT_02		=359
QuestManager.quests.AVENGING_MORT_03		=360
QuestManager.quests.AVENGING_MORT_04		=361
QuestManager.quests.AVENGING_MORT_NEUTRAL	=362
QuestManager.quests.AVENGING_MORT_00N		=363
QuestManager.quests.AVENGING_MORT_01N		=364
QuestManager.quests.AVENGING_MORT_02N		=365
QuestManager.quests.AVENGING_MORT_03N		=366
QuestManager.quests.AVENGING_MORT_04N		=367
QuestManager.quests.AVENGING_MORT_05N		=368
QuestManager.quests.AVENGING_MORT_07N		=369
QuestManager.quests.AVENGING_MORT_REBEL		=370
QuestManager.quests.AVENGING_MORT_00R		=371
QuestManager.quests.AVENGING_MORT_01R		=372
QuestManager.quests.AVENGING_MORT_02R		=373
QuestManager.quests.AVENGING_MORT_04R		=374
QuestManager.quests.AVENGING_MORT_IMPERIAL	=375
QuestManager.quests.AVENGING_MORT_00I		=376
QuestManager.quests.AVENGING_MORT_03I		=377
QuestManager.quests.AVENGING_MORT_04I		=378
QuestManager.quests.AVENGING_MORT_05I		=379
QuestManager.quests.AVENGING_MORT_07I		=380

return QuestManager
