
object_tangible_loot_loot_schematic_armor_segment_ris_schem = object_tangible_loot_loot_schematic_shared_generic_vehicle:new {

	templateType = LOOTSCHEMATIC,
	objectName = "RIS Armor Segment",
	customName = "RIS Armor Segment",
	objectMenuComponent = "LootSchematicMenuComponent",
	attributeListComponent = "LootSchematicAttributeListComponent",
	requiredSkill = "crafting_armorsmith_master",
	targetDraftSchematic = "object/draft_schematic/armor/armor_segment_ris.iff",
	targetUseCount = 12,

}
ObjectTemplates:addTemplate(object_tangible_loot_loot_schematic_armor_segment_ris_schem, "object/tangible/loot/loot_schematic/armor_segment_ris_schem.iff")
