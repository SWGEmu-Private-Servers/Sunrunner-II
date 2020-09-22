
object_tangible_loot_loot_schematic_clothing_armor_ris_gloves = object_tangible_loot_loot_schematic_shared_generic_vehicle:new {

	templateType = LOOTSCHEMATIC,
	objectName = "RIS Armor Gloves",
	customName = "RIS Armor Gloves",
	objectMenuComponent = "LootSchematicMenuComponent",
	attributeListComponent = "LootSchematicAttributeListComponent",
	requiredSkill = "crafting_armorsmith_master",
	targetDraftSchematic = "object/draft_schematic/clothing/clothing_armor_ris_gloves.iff",
	targetUseCount = 5,

}
ObjectTemplates:addTemplate(object_tangible_loot_loot_schematic_clothing_armor_ris_gloves, "object/tangible/loot/loot_schematic/clothing_armor_ris_gloves.iff")
