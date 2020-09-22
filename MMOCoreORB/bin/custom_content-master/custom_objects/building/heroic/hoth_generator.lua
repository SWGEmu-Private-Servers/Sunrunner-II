
object_building_heroic_hoth_generator = object_building_heroic_shared_hoth_generator:new {
	faction = "rebel",
	pvpStatusBitmask = ATTACKABLE,
	optionsBitmask = 0,
	maxCondition = 1000000,

}

ObjectTemplates:addTemplate(object_building_heroic_hoth_generator, "object/building/heroic/hoth_generator.iff")
