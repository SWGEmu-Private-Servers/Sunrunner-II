
object_tangible_loot_loot_schematic_clothing_armor_ris_boots = object_tangible_loot_loot_schematic_shared_generic_vehicle:new {

	templateType = LOOTSCHEMATIC,
	objectName = "RIS Armor Boots",
	customName = "RIS Armor Boots",
	objectMenuComponent = "LootSchematicMenuComponent",
	attributeListComponent = "LootSchematicAttributeListComponent",
	requiredSkill = "crafting_armorsmith_master",
	targetDraftSchematic = "object/draft_schematic/clothing/clothing_armor_ris_boots.iff",
	targetUseCount = 5,

}
ObjectTemplates:addTemplate(object_tangible_loot_loot_schematic_clothing_armor_ris_boots, "object/tangible/loot/loot_schematic/clothing_armor_ris_boots.iff")
