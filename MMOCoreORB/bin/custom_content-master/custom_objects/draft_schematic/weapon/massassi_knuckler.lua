object_draft_schematic_weapon_massassi_knuckler = object_draft_schematic_weapon_shared_massassi_knuckler:new {

   templateType = DRAFTSCHEMATIC,

   customObjectName = "Massassi Knuckler Schematic",

   craftingToolTab = 1, -- (See DraftSchematicObjectTemplate.h)
   complexity = 25, 
   size = 2, 

   xpType = "crafting_weapons_general", 
   xp = 65, 

   assemblySkill = "weapon_assembly", 
   experimentingSkill = "weapon_experimentation", 
   customizationSkill = "weapon_customization", 

   customizationOptions = {},
   customizationStringNames = {},
   customizationDefaults = {},

   ingredientTemplateNames = {"craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_clothing_ingredients_n", "craft_clothing_ingredients_n", "craft_weapon_ingredients_n"},
   ingredientTitleNames = {"handgrip", "strike_face", "metal_fasteners", "padded_straps", "vibration_generator"},
   ingredientSlotType = {0, 0, 0, 0, 1},
   resourceTypes = {"metal_ferrous", "steel", "metal", "hide", "object/tangible/component/weapon/shared_vibro_unit.iff"},
   resourceQuantities = {60, 38, 12, 12, 1},
   contribution = {100, 100, 100, 100, 100},


   targetTemplate = "object/weapon/melee/special/massassiknuckler.iff",

   additionalTemplates = {
             }

}
ObjectTemplates:addTemplate(object_draft_schematic_weapon_massassi_knuckler, "object/draft_schematic/weapon/massassi_knuckler.iff")
