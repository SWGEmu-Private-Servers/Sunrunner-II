
object_tangible_loot_loot_schematic_invisible_infiltrator_helmet = object_tangible_loot_loot_schematic_shared_invisible_infiltrator_helmet:new {

	templateType = LOOTSCHEMATIC,
	objectName = "Invisible Infiltrator Armor Helmet",
	customName = "Invisible Infiltrator Armor Helmet",
	objectMenuComponent = "LootSchematicMenuComponent",
	attributeListComponent = "LootSchematicAttributeListComponent",
	requiredSkill = "crafting_armorsmith_master",
	targetDraftSchematic = "object/draft_schematic/armor/invisible_infiltrator_helmet.iff",
	targetUseCount = -1,

}
ObjectTemplates:addTemplate(object_tangible_loot_loot_schematic_invisible_infiltrator_helmet, "object/tangible/loot/loot_schematic/invisible_infiltrator_helmet.iff")
