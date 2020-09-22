object_tangible_scout_camp_camp_swamp = object_tangible_scout_camp_shared_camp_swamp:new {
	templateType = CAMPKIT,
	objectMenuComponent = "CampKitMenuComponent",
	spawnObjectTemplate = "object/building/poi/player_camp_swamp.iff",

	numberExperimentalProperties = {1, 1, 1, 1},
	experimentalProperties = {"XX", "XX", "XX", "XX"},
	experimentalWeights = {1, 1, 1, 1},
	experimentalGroupTitles = {"null", "null", "null", "null"},
	experimentalSubGroupTitles = {"null", "null", "hitpoints", "quality"},
	experimentalMin = {0, 0, 1000, 1},
	experimentalMax = {0, 0, 1000, 100},
	experimentalPrecision = {0, 0, 0, 0},
	experimentalCombineType = {0, 0, 4, 1},
}

ObjectTemplates:addTemplate(object_tangible_scout_camp_camp_swamp, "object/tangible/scout/camp/camp_swamp.iff")
