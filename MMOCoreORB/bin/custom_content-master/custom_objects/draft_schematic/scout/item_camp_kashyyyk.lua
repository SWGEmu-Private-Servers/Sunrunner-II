object_draft_schematic_scout_item_camp_kashyyyk = object_draft_schematic_scout_shared_item_camp_kashyyyk:new {

   templateType = DRAFTSCHEMATIC,

   customObjectName = "Kashyyykian Pavilion Kit",

   craftingToolTab = 524288, -- (See DraftSchematicObjectTemplate.h)
   complexity = 12, 
   size = 1, 

   xpType = "camp", 
   xp = 100, 

   assemblySkill = "general_assembly", 
   experimentingSkill = "general_experimentation", 
   customizationSkill = "clothing_customization", 

   customizationOptions = {},
   customizationStringNames = {},
   customizationDefaults = {},

   ingredientTemplateNames = {"craft_item_ingredients_n", "craft_item_ingredients_n", "craft_item_ingredients_n"},
   ingredientTitleNames = {"shelter_canvas", "shelter_structure", "shelter_reinforcement"},
   ingredientSlotType = {0, 0, 0},
   resourceTypes = {"hide", "wood", "metal"},
   resourceQuantities = {30, 250, 5},
   contribution = {100, 100, 100},


   targetTemplate = "object/tangible/scout/camp/camp_kashyyyk.iff",

   additionalTemplates = {
             }

}
ObjectTemplates:addTemplate(object_draft_schematic_scout_item_camp_kashyyyk, "object/draft_schematic/scout/item_camp_kashyyyk.iff")
