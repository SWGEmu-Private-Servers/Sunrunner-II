
object_tangible_deed_vehicle_deed_pod_racer_balta_podracer_deed = object_tangible_deed_vehicle_deed_shared_pod_racer_balta_podracer_deed:new {

	templateType = VEHICLEDEED,
	noTrade = 1,
	controlDeviceObjectTemplate = "object/intangible/vehicle/pod_racer_balta_podracer_pcd.iff",
	generatedObjectTemplate = "object/mobile/vehicle/pod_racer_balta_podracer.iff",

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

ObjectTemplates:addTemplate(object_tangible_deed_vehicle_deed_pod_racer_balta_podracer_deed, "object/tangible/deed/vehicle_deed/pod_racer_balta_podracer_deed.iff")
