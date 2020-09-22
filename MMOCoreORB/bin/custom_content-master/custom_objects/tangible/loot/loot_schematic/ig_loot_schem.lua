object_tangible_loot_loot_schematic_ig_loot_schem = object_tangible_loot_loot_schematic_shared_generic_vehicle:new {

	templateType = LOOTSCHEMATIC,
	objectName = "IG Assassin Droid Schematic",
	customName = "IG Assassin Schematic",
	objectMenuComponent = "LootSchematicMenuComponent",
	attributeListComponent = "LootSchematicAttributeListComponent",
	requiredSkill = "crafting_droidengineer_master",
	targetDraftSchematic = "object/draft_schematic/droid/droid_ig_droid.iff",
	targetUseCount = 5,

}
ObjectTemplates:addTemplate(object_tangible_loot_loot_schematic_ig_loot_schem, "object/tangible/loot/loot_schematic/ig_loot_schem.iff")
