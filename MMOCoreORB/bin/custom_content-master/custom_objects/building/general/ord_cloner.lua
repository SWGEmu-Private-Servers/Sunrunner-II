
object_building_general_ord_cloner = object_building_general_shared_ord_cloner:new {
	planetMapCategory = "cloningfacility",
	facilityType = CLONER_STANDARD,

	skillMods = {
		{"private_medical_rating", 100},
		{"private_safe_logout", 1}
	},

	childObjects = {
		{templateFile = "object/tangible/terminal/terminal_cloning.iff", x = 1, z = -0.05, y = 2.5, ox = 0, oy = 0, oz = 0, ow = 1, cellid = 2, containmentType = -1},
		{templateFile = "object/tangible/terminal/terminal_cloning.iff", x = 1, z = -0.05, y = -1.35, ox = 0, oy = 1, oz = 0, ow = 0, cellid = 2, containmentType = -1},
		{templateFile = "object/tangible/terminal/terminal_insurance.iff", x = 8, z = -0.05, y = 3, ox = 0, oy = -0.707106, oz = 0, ow = 0.707106, cellid = 2, containmentType = -1}
	},

	spawningPoints = {
		{ x = -16.6989, z = -4.29167, y = -10.4941, ow = 0.704268, ox = 0, oz = 0, oy = 0.709934, cellid = 4 },
		{ x = -16.5557, z = -4.29167, y = -14.1447, ow = 0.737658, ox = 0, oz = 0, oy = 0.675174, cellid = 4 },
		{ x = 16.3793, z = -4.29167, y = -14.1493, ow = 0.719682, ox = 0, oz = 0, oy = -0.694303, cellid = 4 },
		{ x = 16.4255, z = -4.29167, y = -10.5014, ow = 0.707601, ox = -0, oz = 0, oy = -0.706612, cellid = 4 },
		{ x = 6.38176, z = -4.79167, y = 0.603229, ow = -0.00984072, ox = 0, oz = 0, oy = 0.999952, cellid = 4 },
		{ x = 1.74664, z = -4.79167, y = 0.582775, ow = 0.0143216, ox = 0, oz = 0, oy = 0.999897, cellid = 4 },
		{ x = -2.76574, z = -4.79167, y = 0.657588, ow = -0.0511122, ox = 0, oz = 0, oy = 0.998693, cellid = 4 },
	}, -- { x, z, y, ow, ox, oy, oz, cellid }

	templateType = CLONINGBUILDING
}

ObjectTemplates:addTemplate(object_building_general_ord_cloner, "object/building/general/ord_cloner.iff")
