object_draft_schematic_droid_component_chassis_droid_super_battle = object_draft_schematic_droid_component_shared_chassis_droid_super_battle:new {
	templateType = DRAFTSCHEMATIC,

	customObjectName = "Super Battle Droid Chassis",

	craftingToolTab = 32, -- (See DraftSchematicObjectTemplate.h)
	complexity = 25,
	size = 6,
	factoryCrateSize = 1000,

	xpType = "crafting_droid_general",
	xp = 340,

	assemblySkill = "droid_assembly",
	experimentingSkill = "droid_experimentation",
	customizationSkill = "droid_customization",

	customizationOptions = {},
	customizationStringNames = {},
	customizationDefaults = {},

	ingredientTemplateNames = {"craft_droid_ingredients_n", "craft_droid_ingredients_n", "craft_droid_ingredients_n", "craft_droid_ingredients_n", "craft_droid_ingredients_n", "craft_droid_ingredients_n", "craft_droid_ingredients_n", "craft_droid_ingredients_n"},
	ingredientTitleNames = {"primary_frame", "body_shell", "shielding_and_insulation", "droid_brain", "manipulator_arm", "motivator", "navigation_sensor_suite", "espionage_sensor_suite"},
	ingredientSlotType = {0, 0, 0, 1, 1, 1, 1, 1},
	resourceTypes = {"chemical", "chemical", "ore_extrusive", "object/tangible/component/droid/shared_droid_brain.iff", "object/tangible/component/droid/shared_manipulator_arm_package_set.iff", "object/tangible/component/droid/shared_droid_motive_system_advanced.iff", "object/tangible/component/droid/shared_sensor_package_droid.iff", "object/tangible/component/item/shared_micro_sensor_suite.iff"},
	resourceQuantities = {150, 110, 50, 1, 1, 1, 1, 1},
	contribution = {100, 100, 100, 100, 100, 100, 100, 100},

	targetTemplate = "object/tangible/component/droid/super_battle_droid_chassis.iff",

	additionalTemplates = {}
}

ObjectTemplates:addTemplate(object_draft_schematic_droid_component_chassis_droid_super_battle, "object/draft_schematic/droid/component/chassis_droid_super_battle.iff")
