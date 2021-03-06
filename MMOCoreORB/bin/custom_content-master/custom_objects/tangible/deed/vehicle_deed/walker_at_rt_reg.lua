
object_tangible_deed_vehicle_deed_walker_at_rt_reg = object_tangible_deed_vehicle_deed_shared_walker_at_rt_camo:new {

	templateType = VEHICLEDEED,
	--noTrade = 1,
	controlDeviceObjectTemplate = "object/intangible/vehicle/walker_at_rt_reg_pcd.iff",
	generatedObjectTemplate = "object/mobile/vehicle/walker_at_rt_reg.iff",

	numberExperimentalProperties = {1, 1, 1},
	experimentalProperties = {"XX", "XX", "SR"},
	experimentalWeights = {1, 1, 1},
	experimentalGroupTitles = {"null", "null", "exp_durability"},
	experimentalSubGroupTitles = {"null", "null", "hit_points"},
	experimentalMin = {0, 0, 1000},
	experimentalMax = {0, 0, 2500},
	experimentalPrecision = {0, 0, 0},
	experimentalCombineType = {0, 0, 1},
}

ObjectTemplates:addTemplate(object_tangible_deed_vehicle_deed_walker_at_rt_reg, "object/tangible/deed/vehicle_deed/walker_at_rt_reg.iff")
