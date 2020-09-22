object_draft_schematic_vehicle_civilian_koro2_speeder_schem = object_draft_schematic_vehicle_civilian_shared_koro2_speeder_schem:new {
	templateType = DRAFTSCHEMATIC,

	customObjectName = "Koro-2 Speeder",

	craftingToolTab = 16, -- (See DraftSchematicObjectTemplate.h)
	complexity = 25,
	size = 1,
   factoryCrateSize = 0, 

	xpType = "crafting_general",
	xp = 1800,

	assemblySkill = "general_assembly",
	experimentingSkill = "general_experimentation",
	customizationSkill = "clothing_customization",

	customizationOptions = {},
	customizationStringNames = {},
	customizationDefaults = {},

	ingredientTemplateNames = {"craft_vehicle_ingredients_n", "craft_vehicle_ingredients_n", "craft_item_ingredients_n"},
	ingredientTitleNames = {"vehicle_body", "structural_frame", "power_plant"},
	ingredientSlotType = {0, 0, 1},
	resourceTypes = {"metal_nonferrous", "metal_ferrous", "object/tangible/component/vehicle/shared_veh_power_plant.iff"},
	resourceQuantities = {1200, 4800, 1},
	contribution = {100, 100, 100},

	targetTemplate = "object/tangible/tcg/series3/vehicle_deed_koro2_exodrive_airspeeder.iff",

	additionalTemplates = {}
}

ObjectTemplates:addTemplate(object_draft_schematic_vehicle_civilian_koro2_speeder_schem, "object/draft_schematic/vehicle/civilian/koro2_speeder_schem.iff")
