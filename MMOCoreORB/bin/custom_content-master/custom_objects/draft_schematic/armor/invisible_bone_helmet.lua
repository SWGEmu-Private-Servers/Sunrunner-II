object_draft_schematic_armor_invisible_bone_helmet = object_draft_schematic_armor_shared_invisible_bone_helmet:new {
   templateType = DRAFTSCHEMATIC,

   customObjectName = "Invisible Bone Armor Helmet",

   craftingToolTab = 2, -- (See DraftSchematicObjectTemplate.h)
   complexity = 15, 
   size = 3, 

   xpType = "crafting_general", 
   xp = 260, 

   assemblySkill = "general_assembly", 
   experimentingSkill = "general_experimentation", 
   customizationSkill = "armor_customization", 

   customizationOptions = {2},
   customizationStringNames = {"/private/index_color_1"},
   customizationDefaults = {0},

   ingredientTemplateNames = {"craft_clothing_ingredients_n", "craft_clothing_ingredients_n", "craft_clothing_ingredients_n", "craft_clothing_ingredients_n", "craft_clothing_ingredients_n", "craft_clothing_ingredients_n", "craft_clothing_ingredients_n", "craft_clothing_ingredients_n", "craft_clothing_ingredients_n", "craft_clothing_ingredients_n"},
   ingredientTitleNames = {"auxilary_coverage", "body", "liner", "hardware_and_attachments", "binding_and_reinforcement", "padding", "armor", "load_bearing_harness", "reinforcement", "auxiliary_coverage_2"},
   ingredientSlotType = {0, 0, 0, 0, 0, 0, 1, 1, 1, 1},
   resourceTypes = {"bone", "hide", "hide", "metal", "petrochem_inert", "hide", "object/tangible/component/armor/shared_armor_segment_bone.iff", "object/tangible/component/clothing/shared_fiberplast_panel.iff", "object/tangible/component/clothing/shared_fiberplast_panel.iff", "object/tangible/component/clothing/shared_fiberplast_panel.iff"},
   resourceQuantities = {30, 30, 30, 20, 10, 10, 1, 1, 1, 1},
   contribution = {100, 100, 100, 100, 100, 100, 100, 100, 100, 100},


   targetTemplate = "object/tangible/wearables/armor/invisible/invisible_bone_helmet.iff",

   additionalTemplates = {
   }

}

ObjectTemplates:addTemplate(object_draft_schematic_armor_invisible_bone_helmet, "object/draft_schematic/armor/invisible_bone_helmet.iff")
