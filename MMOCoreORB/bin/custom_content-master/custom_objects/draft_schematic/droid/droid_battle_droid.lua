object_draft_schematic_droid_droid_battle_droid = object_draft_schematic_droid_shared_droid_battle_droid:new {
	templateType = DRAFTSCHEMATIC,

	customObjectName = "Deed for: Battle Droid",

	craftingToolTab = 32, -- (See DraftSchematicObjectTemplate.h)
	complexity = 39,
	size = 1,
   factoryCrateSize = 0, 

	xpType = "crafting_droid_general",
	xp = 560,

	assemblySkill = "droid_assembly",
	experimentingSkill = "droid_experimentation",
	customizationSkill = "droid_customization",

	customizationOptions = {},
	customizationStringNames = {},
	customizationDefaults = {},

	ingredientTemplateNames = {"craft_droid_ingredients_n", "craft_droid_ingredients_n", "craft_droid_ingredients_n", "craft_droid_ingredients_n", "craft_droid_ingredients_n", "craft_droid_ingredients_n", "craft_droid_ingredients_n", "craft_droid_ingredients_n", "craft_droid_ingredients_n"},
	ingredientTitleNames = {"old_shell_reinforcement", "upgrade_electronics_bay", "base_chassis", "adaptor_electronics", "general_droid_module_package", "general_droid_module", "general_droid_module2", "droid_defensive_module", "droid_defensive_module2"},
	ingredientSlotType = {0, 0, 1, 1, 3, 3, 3, 3, 3},
	resourceTypes = {"chemical", "chemical", "object/tangible/component/droid/shared_battle_droid_chassis.iff", "object/tangible/component/droid/shared_droid_brain.iff", "object/tangible/component/droid/shared_combat_socket_bank.iff", "object/tangible/component/droid/shared_droid_combat_service_module_base.iff", "object/tangible/component/droid/shared_droid_combat_service_module_base.iff", "object/tangible/component/droid/shared_defensive_module_base.iff", "object/tangible/component/droid/shared_defensive_module_base.iff"},
	resourceQuantities = {135, 285, 1, 1, 1, 1, 1, 1, 1},
	contribution = {100, 100, 100, 100, 100, 100, 100, 100, 100},

	targetTemplate = "object/tangible/deed/pet_deed/battle_droid_deed.iff",

	additionalTemplates = {}
}

ObjectTemplates:addTemplate(object_draft_schematic_droid_droid_battle_droid, "object/draft_schematic/droid/droid_battle_droid.iff")
