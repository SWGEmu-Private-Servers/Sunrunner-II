object_draft_schematic_vehicle_civilian_single_pod_air_speeder_schem = object_draft_schematic_vehicle_civilian_shared_single_pod_air_speeder_schem:new {
	templateType = DRAFTSCHEMATIC,

	customObjectName = "Bespin Single Pod Air Speeder",

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
	resourceQuantities = {1000, 4400, 1},
	contribution = {100, 100, 100},

	targetTemplate = "object/tangible/deed/vehicle_deed/tcg_8_air_speeder_deed.iff",

	additionalTemplates = {}
}

ObjectTemplates:addTemplate(object_draft_schematic_vehicle_civilian_single_pod_air_speeder_schem, "object/draft_schematic/vehicle/civilian/single_pod_air_speeder_schem.iff")
