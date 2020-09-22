
object_tangible_loot_loot_schematic_clothing_armor_ris_helmet = object_tangible_loot_loot_schematic_shared_generic_vehicle:new {

	templateType = LOOTSCHEMATIC,
	objectName = "RIS Armor Helmet",
	customName = "RIS Armor Helmet",
	objectMenuComponent = "LootSchematicMenuComponent",
	attributeListComponent = "LootSchematicAttributeListComponent",
	requiredSkill = "crafting_armorsmith_master",
	targetDraftSchematic = "object/draft_schematic/clothing/clothing_armor_ris_helmet.iff",
	targetUseCount = 5,

}
ObjectTemplates:addTemplate(object_tangible_loot_loot_schematic_clothing_armor_ris_helmet, "object/tangible/loot/loot_schematic/clothing_armor_ris_helmet.iff")
