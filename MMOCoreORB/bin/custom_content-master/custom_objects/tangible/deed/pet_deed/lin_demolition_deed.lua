object_tangible_deed_pet_deed_lin_demolition_deed = object_tangible_deed_pet_deed_shared_lin_demolition_deed:new {

	templateType = DROIDDEED,

	controlDeviceObjectTemplate = "object/intangible/pet/lin_demolitionmech.iff",
	generatedObjectTemplate = "object/mobile/lin_demolitionmech.iff",
	mobileTemplate = "lin_demolition_crafted",
	species = 208,

	numberExperimentalProperties = {1, 1, 3, 1, 1, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
	experimentalProperties = {"XX", "XX", "OQ", "SR", "UT", "XX", "XX", "OQ", "SR", "UT", "OQ", "XX", "XX", "XX", "XX", "XX", "XX", "XX", "XX", "XX", "XX", "XX", "XX", "XX", "XX", "XX", "XX", "XX", "XX"},
	experimentalWeights = {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
	experimentalGroupTitles = {"null", "null", "exp_durability", "null", "null", "exp_quality", "exp_effectiveness", "null", "null", "null", "null", "null", "null", "null", "null", "null", "null", "null", "null", "null", "null", "null", "null", "null", "null"},
	experimentalSubGroupTitles = {"null", "null", "decayrate", "armor_toughness", "armorencumbrance", "mechanism_quality", "power_level", "storage_module", "data_module", "personality_module", "medical_module", "crafting_module", "repair_module", "armor_module", "armoreffectiveness", "playback_module", "struct_module", "harvest_power", "trap_bonus", "merchant_barker", "bomb_level", "stimpack_capacity", "stimpack_speed", "auto_repair_power", "entertainer_effects"},
	experimentalMin = {0, 0, 5, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
	experimentalMax = {0, 0, 15, 0, 0, 100, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
	experimentalPrecision = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
	experimentalCombineType = {0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
}

ObjectTemplates:addTemplate(object_tangible_deed_pet_deed_lin_demolition_deed, "object/tangible/deed/pet_deed/lin_demolition_deed.iff")