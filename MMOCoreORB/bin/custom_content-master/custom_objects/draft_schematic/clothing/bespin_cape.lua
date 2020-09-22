object_draft_schematic_clothing_bespin_cape = object_draft_schematic_clothing_shared_bespin_cape:new {
	templateType = DRAFTSCHEMATIC,

	customObjectName = "Cloud City Administrator's Cape",

   craftingToolTab = 8, -- (See DraftSchematicObjectTemplate.h)
   complexity = 23, 
   size = 4, 

   xpType = "crafting_clothing_general", 
   xp = 220, 

   assemblySkill = "clothing_assembly", 
   experimentingSkill = "clothing_experimentation", 
   customizationSkill = "clothing_customization", 

	customizationOptions = {},
	customizationStringNames = {},
	customizationDefaults = {},

   ingredientTemplateNames = {"craft_clothing_ingredients_n", "craft_clothing_ingredients_n", "craft_clothing_ingredients_n", "craft_clothing_ingredients_n", "craft_clothing_ingredients_n", "craft_clothing_ingredients_n"},
   ingredientTitleNames = {"trim_and_binding", "extra_trim", "jewelry_setting", "hardware", "inner_gown", "outer_gown"},
   ingredientSlotType = {1, 1, 1, 0, 1, 0},
   resourceTypes = {"object/tangible/component/clothing/shared_fiberplast_panel.iff", "object/tangible/component/clothing/shared_trim.iff", "object/tangible/component/clothing/shared_jewelry_setting.iff", "metal", "object/tangible/component/clothing/shared_synthetic_cloth.iff", "hide"},
   resourceQuantities = {4, 4, 2, 160, 2, 120},
   contribution = {100, 100, 100, 100, 100, 100},

	targetTemplate = "object/tangible/tcg/series8/wearable_lando_cape.iff",

	additionalTemplates = {}
}

ObjectTemplates:addTemplate(object_draft_schematic_clothing_bespin_cape, "object/draft_schematic/clothing/bespin_cape.iff")
