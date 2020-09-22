object_draft_schematic_weapon_pistol_alliance_disruptor = object_draft_schematic_weapon_shared_pistol_alliance_disruptor:new {

   templateType = DRAFTSCHEMATIC,

   customObjectName = "Alliance Disruptor Pistol Schematic",

   craftingToolTab = 1, -- (See DraftSchematicObjectTemplate.h)
   complexity = 30, 
   size = 1, 

   xpType = "crafting_weapons_general", 
   xp = 350, 

   assemblySkill = "weapon_assembly", 
   experimentingSkill = "weapon_experimentation", 
   customizationSkill = "weapon_customization", 

   customizationOptions = {},
   customizationStringNames = {},
   customizationDefaults = {},

   ingredientTemplateNames = {"craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n"},
   ingredientTitleNames = {"frame_assembly", "receiver_assembly", "grip_assembly", "powerhandler", "barrel", "scope"},
   ingredientSlotType = {0, 0, 0, 1, 1, 3},
   resourceTypes = {"iron_plumbum", "metal_nonferrous", "chemical", "object/tangible/component/weapon/shared_blaster_power_handler.iff", "object/tangible/component/weapon/shared_blaster_pistol_barrel.iff", "object/tangible/component/weapon/shared_scope_weapon.iff"},
   resourceQuantities = {85, 40, 28, 1, 1, 1},
   contribution = {100, 100, 100, 100, 100, 100},


   targetTemplate = "object/weapon/ranged/pistol/pistol_alliance_disruptor.iff",

   additionalTemplates = {
             }

}


ObjectTemplates:addTemplate(object_draft_schematic_weapon_pistol_alliance_disruptor, "object/draft_schematic/weapon/pistol_alliance_disruptor.iff")
