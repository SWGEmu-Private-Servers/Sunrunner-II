object_tangible_loot_loot_schematic_droideka_loot_schem = object_tangible_loot_loot_schematic_shared_generic_vehicle:new {

	templateType = LOOTSCHEMATIC,
	objectName = "Droideka Schematic",
	customName = "Droideka Schematic",
	objectMenuComponent = "LootSchematicMenuComponent",
	attributeListComponent = "LootSchematicAttributeListComponent",
	requiredSkill = "crafting_droidengineer_master",
	targetDraftSchematic = "object/draft_schematic/droid/droid_droideka.iff",
	targetUseCount = 5,

}
ObjectTemplates:addTemplate(object_tangible_loot_loot_schematic_droideka_loot_schem, "object/tangible/loot/loot_schematic/droideka_loot_schem.iff")
