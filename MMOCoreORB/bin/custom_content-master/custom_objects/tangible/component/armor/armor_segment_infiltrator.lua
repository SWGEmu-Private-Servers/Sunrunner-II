
object_tangible_component_armor_armor_segment_infiltrator = object_tangible_component_armor_shared_armor_segment_infiltrator:new {

	numberExperimentalProperties = {1, 1, 1, 2, 2, 2, 2, 2, 1, 1, 2, 1},
	experimentalProperties = {"XX", "XX", "XX", "OQ", "SR", "OQ", "UT", "MA", "OQ", "MA", "OQ", "MA", "OQ", "XX", "XX", "OQ", "SR", "XX"},
	experimentalWeights = {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
	experimentalGroupTitles = {"null", "null", "exp_durability", "exp_quality", "exp_durability", "exp_durability", "exp_durability", "exp_durability", "null", "null", "exp_resistance", "null"},
	experimentalSubGroupTitles = {"null", "null", "hit_points", "armor_effectiveness", "armor_integrity", "armor_health_encumbrance", "armor_action_encumbrance", "armor_mind_encumbrance", "armor_rating", "armor_special_type", "armor_special_effectiveness", "armor_special_integrity"},
	experimentalMin = {0, 0, 1000, 1, 100, 13, 13, 16, 1, 256, 1, 100},
	experimentalMax = {0, 0, 1000, 25, 1000, 1, 1, 1, 1, 256, 35, 1000},
	experimentalPrecision = {0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 10, 0},
	experimentalCombineType = {0, 0, 1, 1, 1, 1, 1, 1, 4, 4, 4, 1},
}

ObjectTemplates:addTemplate(object_tangible_component_armor_armor_segment_infiltrator, "object/tangible/component/armor/armor_segment_infiltrator.iff")
