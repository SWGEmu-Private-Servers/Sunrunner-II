object_draft_schematic_armor_invisible_zam_helmet = object_draft_schematic_armor_shared_invisible_zam_helmet:new {
   templateType = DRAFTSCHEMATIC,

   customObjectName = "Invisible Mabari Armor Helmet",

   craftingToolTab = 2, -- (See DraftSchematicObjectTemplate.h)
   complexity = 20, 
   size = 4, 

   xpType = "crafting_clothing_armor", 
   xp = 250, 

   assemblySkill = "armor_assembly", 
   experimentingSkill = "armor_experimentation", 
   customizationSkill = "armor_customization", 

   customizationOptions = {2, 1},
   customizationStringNames = {"/private/index_color_1", "/private/index_color_2"},
   customizationDefaults = {11, 63},

   ingredientTemplateNames = {"craft_clothing_ingredients_n", "craft_clothing_ingredients_n", "craft_clothing_ingredients_n", "craft_clothing_ingredients_n", "craft_clothing_ingredients_n", "craft_clothing_ingredients_n", "craft_clothing_ingredients_n", "craft_clothing_ingredients_n"},
   ingredientTitleNames = {"auxilary_coverage", "body", "liner", "hardware_and_attachments", "binding_and_reinforcement", "padding", "armor", "load_bearing_harness"},
   ingredientSlotType = {0, 0, 0, 0, 0, 0, 1, 1},
   resourceTypes = {"metal", "hide", "fiberplast", "metal", "petrochem_inert", "fiberplast", "object/tangible/component/armor/shared_armor_segment_zam.iff", "object/tangible/component/clothing/shared_synthetic_cloth.iff"},
   resourceQuantities = {30, 30, 30, 20, 10, 20, 1, 2},
   contribution = {100, 100, 100, 100, 100, 100, 100, 100},


   targetTemplate = "object/tangible/wearables/armor/invisible/invisible_zam_helmet.iff",

   additionalTemplates = {}

}

ObjectTemplates:addTemplate(object_draft_schematic_armor_invisible_zam_helmet, "object/draft_schematic/armor/invisible_zam_helmet.iff")
