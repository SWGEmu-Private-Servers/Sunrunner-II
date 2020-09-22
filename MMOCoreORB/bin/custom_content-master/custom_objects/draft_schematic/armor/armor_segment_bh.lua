object_draft_schematic_armor_armor_segment_bh = object_draft_schematic_armor_shared_armor_segment_bh:new {

	templateType = DRAFTSCHEMATIC,

	customObjectName = "Bounty Hunter Armor Segment",

	craftingToolTab = 2, -- (See DraftSchematicObjectTemplate.h)
	complexity = 30,
	size = 6,
	factoryCrateSize = 1000,

	xpType = "crafting_clothing_armor",
	xp = 35,

	assemblySkill = "armor_assembly",
	experimentingSkill = "armor_experimentation",
	customizationSkill = "armor_customization",

	customizationOptions = {},
	customizationStringNames = {},
	customizationDefaults = {},

	ingredientTemplateNames = {"craft_armor_ingredients_n", "craft_armor_ingredients_n", "craft_armor_ingredients_n", "craft_armor_ingredients_n", "craft_armor_ingredients_n", "craft_armor_ingredients_n", "craft_armor_ingredients_n"},
	ingredientTitleNames = {"segment_layer_assembly_plate", "armor_layer_weld_tabs", "segment_mounting_tabs", "armor_layer_electrical", "defensive_layer", "defensive_layer_2", "segment_enhancement"},
	ingredientSlotType = {0, 0, 0, 1, 1, 1, 1},
	resourceTypes = {"ore_intrusive", "aluminum", "copper_beyrllius", "object/tangible/component/armor/shared_armor_layer_electrical.iff", "object/tangible/component/armor/shared_armor_layer.iff", "object/tangible/component/armor/shared_armor_layer.iff", "object/tangible/component/armor/shared_base_armor_segment_enhancement_bh.iff"},
	resourceQuantities = {16, 8, 5, 1, 1, 1, 1},
	contribution = {100, 100, 100, 100, 100, 100, 100},

	targetTemplate = "object/tangible/component/armor/armor_segment_bh.iff",

	additionalTemplates = {}
}
ObjectTemplates:addTemplate(object_draft_schematic_armor_armor_segment_bh, "object/draft_schematic/armor/armor_segment_bh.iff")
