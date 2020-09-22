object_draft_schematic_clothing_bespin_headband = object_draft_schematic_clothing_shared_bespin_headband:new {
	templateType = DRAFTSCHEMATIC,

	customObjectName = "Cybernetic Headband",

	craftingToolTab = 32, -- (See DraftSchematicObjectTemplate.h)
	complexity = 16,
	size = 1,
	factoryCrateSize = 5,

	xpType = "crafting_droid_general",
	xp = 300,

	assemblySkill = "droid_assembly",
	experimentingSkill = "droid_experimentation",
	customizationSkill = "droid_customization",

	customizationOptions = {},
	customizationStringNames = {},
	customizationDefaults = {},

	ingredientTemplateNames = {"craft_droid_ingredients_n", "craft_droid_ingredients_n", "craft_droid_ingredients_n", "craft_droid_ingredients_n", "craft_droid_ingredients_n"},
	ingredientTitleNames = {"primary_frame", "body_shell", "search_parameter_storage_circuit", "command_interpreter", "autonomous_searcher_logic_unit"},
	ingredientSlotType = {0, 0, 1, 1, 1},
	resourceTypes = {"metal_ferrous", "chemical", "object/tangible/component/item/shared_electronics_memory_module.iff", "object/tangible/component/item/shared_electronics_gp_module.iff", "object/tangible/component/item/shared_electronics_gp_module.iff"},
	resourceQuantities = {30, 70, 1, 1, 1},
	contribution = {100, 100, 100, 100, 100},

	targetTemplate = "object/tangible/collection/reward/cyborg_headband.iff",

	additionalTemplates = {}
}

ObjectTemplates:addTemplate(object_draft_schematic_clothing_bespin_headband, "object/draft_schematic/clothing/bespin_headband.iff")
