
object_tangible_loot_loot_schematic_invisible_ris_helmet = object_tangible_loot_loot_schematic_shared_invisible_ris_helmet:new {

	templateType = LOOTSCHEMATIC,
	objectName = "Invisible R.I.S. Armor Helmet",
	customName = "Invisible R.I.S. Armor Helmet",
	objectMenuComponent = "LootSchematicMenuComponent",
	attributeListComponent = "LootSchematicAttributeListComponent",
	requiredSkill = "crafting_armorsmith_master",
	targetDraftSchematic = "object/draft_schematic/armor/invisible_ris_helmet.iff",
	targetUseCount = -1,

}
ObjectTemplates:addTemplate(object_tangible_loot_loot_schematic_invisible_ris_helmet, "object/tangible/loot/loot_schematic/invisible_ris_helmet.iff")
