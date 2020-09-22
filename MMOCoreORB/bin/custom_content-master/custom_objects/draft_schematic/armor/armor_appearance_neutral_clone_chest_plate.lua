object_draft_schematic_armor_armor_appearance_neutral_clone_chest_plate = object_draft_schematic_armor_shared_armor_appearance_neutral_clone_chest_plate:new {
   templateType = DRAFTSCHEMATIC,

   customObjectName = "Neutral Clone Trooper Armor Chest Plate",

   craftingToolTab = 2, -- (See DraftSchematicObjectTemplate.h)
   complexity = 45, 
   size = 1, 

   xpType = "crafting_clothing_armor", 
   xp = 1782, 

   assemblySkill = "armor_assembly", 
   experimentingSkill = "armor_experimentation", 
   customizationSkill = "armor_customization", 

   customizationOptions = {},
   customizationStringNames = {},
   customizationDefaults = {},

   ingredientTemplateNames = {"craft_clothing_ingredients_n", "craft_clothing_ingredients_n", "craft_clothing_ingredients_n", "craft_clothing_ingredients_n", "craft_clothing_ingredients_n", "craft_clothing_ingredients_n", "craft_clothing_ingredients_n", "craft_clothing_ingredients_n", "craft_clothing_ingredients_n"},
   ingredientTitleNames = {"auxilary_coverage", "body", "liner", "hardware_and_attachments", "binding_and_reinforcement", "padding", "armor", "load_bearing_harness", "reinforcement"},
   ingredientSlotType = {0, 0, 0, 0, 0, 0, 1, 1, 1},
   resourceTypes = {"armophous_vendusii", "fuel_petrochem_solid_known", "fiberplast_kuat", "aluminum_chromium", "copper_platinite", "hide_wooly_taanab", "object/tangible/component/armor/shared_armor_segment_enhancement_rancor.iff", "object/tangible/component/clothing/shared_synthetic_cloth.iff", "object/tangible/component/weapon/shared_wampa_bone_reinforcement_core.iff"},
   resourceQuantities = {300, 150, 120, 100, 80, 60, 4, 1, 1},
   contribution = {100, 100, 100, 100, 100, 100, 100, 100, 100},


   targetTemplate = "object/tangible/wearables/armor/clone_trooper/armor_clone_trooper_neutral_s01_chest_plate.iff",

   additionalTemplates = {
             }
}

ObjectTemplates:addTemplate(object_draft_schematic_armor_armor_appearance_neutral_clone_chest_plate, "object/draft_schematic/armor/armor_appearance_neutral_clone_chest_plate.iff")
