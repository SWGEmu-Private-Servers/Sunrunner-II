object_tangible_scout_camokit_camokit_kuat = object_tangible_scout_camokit_shared_camokit_kuat:new {

	templateType = CAMOKIT,

	effectiveZone = "kuat",

	numberExperimentalProperties = {1, 1, 1, 1},
	experimentalProperties = {"XX", "XX", "XX", "OQ"},
	experimentalWeights = {1, 1, 1, 1},
	experimentalGroupTitles = {"null", "null", "null", "exp_quantity"},
	experimentalSubGroupTitles = {"null", "null", "hitpoints", "quantity"},
	experimentalMin = {0, 0, 1000, 5},
	experimentalMax = {0, 0, 1000, 20},
	experimentalPrecision = {0, 0, 0, 0},
	experimentalCombineType = {0, 0, 4, 1},
}

ObjectTemplates:addTemplate(object_tangible_scout_camokit_camokit_kuat, "object/tangible/scout/camokit/camokit_kuat.iff")
