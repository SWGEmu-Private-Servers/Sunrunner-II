object_draft_schematic_scout_item_camokit_dagobah = object_draft_schematic_scout_shared_item_camokit_dagobah:new {
   templateType = DRAFTSCHEMATIC,

   customObjectName = "Camo Kit: Dagobah",

   craftingToolTab = 524288, -- (See DraftSchematicObjectTemplate.h)
   complexity = 2, 
   size = 1, 

   xpType = "scout", 
   xp = 170, 

   assemblySkill = "camouflage", 
   experimentingSkill = "camouflage", 
   customizationSkill = "clothing_customization", 

   customizationOptions = {},
   customizationStringNames = {},
   customizationDefaults = {},

   ingredientTemplateNames = {"craft_item_ingredients_n", "craft_item_ingredients_n", "craft_item_ingredients_n"},
   ingredientTitleNames = {"musk_extract", "native_animal_skins", "camo_dye"},
   ingredientSlotType = {0, 0, 0},
   resourceTypes = {"meat_reptilian", "hide_wooly", "bone_mammal"},
   resourceQuantities = {20, 30, 10},
   contribution = {100, 100, 100},


   targetTemplate = "object/tangible/scout/camokit/camokit_dagobah.iff",

   additionalTemplates = {
             }
}

ObjectTemplates:addTemplate(object_draft_schematic_scout_item_camokit_dagobah, "object/draft_schematic/scout/item_camokit_dagobah.iff")
