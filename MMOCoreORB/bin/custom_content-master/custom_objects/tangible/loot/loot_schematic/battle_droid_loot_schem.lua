object_tangible_loot_loot_schematic_battle_droid_loot_schem = object_tangible_loot_loot_schematic_shared_generic_vehicle:new {

	templateType = LOOTSCHEMATIC,
	objectName = "Battle Droid Schematic",
	customName = "Battle Droid Schematic",
	objectMenuComponent = "LootSchematicMenuComponent",
	attributeListComponent = "LootSchematicAttributeListComponent",
	requiredSkill = "crafting_droidengineer_master",
	targetDraftSchematic = "object/draft_schematic/droid/droid_battle_droid.iff",
	targetUseCount = 5,

}
ObjectTemplates:addTemplate(object_tangible_loot_loot_schematic_battle_droid_loot_schem, "object/tangible/loot/loot_schematic/battle_droid_loot_schem.iff")
