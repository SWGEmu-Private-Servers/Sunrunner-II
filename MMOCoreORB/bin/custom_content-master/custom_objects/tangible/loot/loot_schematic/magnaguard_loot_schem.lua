object_tangible_loot_loot_schematic_magnaguard_loot_schem = object_tangible_loot_loot_schematic_shared_generic_vehicle:new {

	templateType = LOOTSCHEMATIC,
	objectName = "Magnaguard Schematic",
	customName = "Magnaguard Schematic",
	objectMenuComponent = "LootSchematicMenuComponent",
	attributeListComponent = "LootSchematicAttributeListComponent",
	requiredSkill = "crafting_droidengineer_master",
	targetDraftSchematic = "object/draft_schematic/droid/droid_magnaguard.iff",
	targetUseCount = 5,

}
ObjectTemplates:addTemplate(object_tangible_loot_loot_schematic_magnaguard_loot_schem, "object/tangible/loot/loot_schematic/magnaguard_loot_schem.iff")
