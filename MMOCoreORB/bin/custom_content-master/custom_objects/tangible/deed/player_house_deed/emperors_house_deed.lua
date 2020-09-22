
object_tangible_deed_player_house_deed_emperors_house_deed = object_tangible_deed_player_house_deed_shared_emperors_house_deed:new {
	templateType = STRUCTUREDEED,
	customName = "Deed: Imperial Spire",
	placeStructureComponent = "PlaceStructureComponent",
	generatedObjectTemplate = "object/building/player/emperors_house.iff",
	
	numberExperimentalProperties = {1, 1, 1},
	experimentalProperties = {"XX", "XX", "DR"},
	experimentalWeights = {1, 1, 1},
	experimentalGroupTitles = {"null", "null", "exp_durability"},
	experimentalSubGroupTitles = {"null", "null", "hitpoints"},
	experimentalMin = {0, 0, 50000},
	experimentalMax = {0, 0, 100000},
	experimentalPrecision = {0, 0, 0},
	experimentalCombineType = {0, 0, 4},
}

ObjectTemplates:addTemplate(object_tangible_deed_player_house_deed_emperors_house_deed, "object/tangible/deed/player_house_deed/emperors_house_deed.iff")
