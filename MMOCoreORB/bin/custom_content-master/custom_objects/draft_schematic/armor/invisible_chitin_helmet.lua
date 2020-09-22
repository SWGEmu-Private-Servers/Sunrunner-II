object_draft_schematic_armor_invisible_chitin_helmet = object_draft_schematic_armor_shared_invisible_chitin_helmet:new {
   templateType = DRAFTSCHEMATIC,

   customObjectName = "Invisible Chitin Armor Helmet",

   craftingToolTab = 2, -- (See DraftSchematicObjectTemplate.h)
   complexity = 25, 
   size = 3, 

   xpType = "crafting_clothing_armor", 
   xp = 270, 

   assemblySkill = "armor_assembly", 
   experimentingSkill = "armor_experimentation", 
   customizationSkill = "armor_customization", 

   customizationOptions = {34, 2, 1},
   customizationStringNames = {"/private/index_color_0", "/private/index_color_1", "/private/index_color_2"},
   customizationDefaults = {0, 6, 3},

   ingredientTemplateNames = {"craft_clothing_ingredients_n", "craft_clothing_ingredients_n", "craft_clothing_ingredients_n", "craft_clothing_ingredients_n", "craft_clothing_ingredients_n", "craft_clothing_ingredients_n", "craft_clothing_ingredients_n", "craft_clothing_ingredients_n", "craft_clothing_ingredients_n"},
   ingredientTitleNames = {"auxilary_coverage", "body", "liner", "hardware_and_attachments", "binding_and_reinforcement", "padding", "armor", "load_bearing_harness", "reinforcement"},
   ingredientSlotType = {0, 0, 0, 0, 0, 0, 1, 1, 1},
   resourceTypes = {"bone", "hide_leathery", "hide_scaley", "metal_ferrous", "petrochem_inert_polymer", "hide_wooly", "object/tangible/component/armor/shared_armor_segment_chitin.iff", "object/tangible/component/clothing/shared_fiberplast_panel.iff", "object/tangible/component/clothing/shared_reinforced_fiber_panels.iff"},
   resourceQuantities = {30, 30, 30, 15, 15, 15, 3, 1, 1},
   contribution = {100, 100, 100, 100, 100, 100, 100, 100, 100},


   targetTemplate = "object/tangible/wearables/armor/invisible/invisible_chitin_helmet.iff",

   additionalTemplates = {}

}

ObjectTemplates:addTemplate(object_draft_schematic_armor_invisible_chitin_helmet, "object/draft_schematic/armor/invisible_chitin_helmet.iff")
