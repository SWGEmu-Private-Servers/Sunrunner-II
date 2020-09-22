
object_building_general_ord_hospital = object_building_general_shared_ord_hospital:new {
	skillMods = {
		{"private_medical_rating", 100},
		{"private_med_wound_health", 100},
		{"private_med_wound_action", 100},
		{"private_safe_logout", 1}
	},

	planetMapCategory = "medicalcenter",

	childObjects = {
		{templateFile = "object/tangible/terminal/terminal_elevator_up.iff", x = 0.122, z = 0.25, y = -2.16, ow = 0.906308, ox = 0, oy = 0.422618, oz = 0, cellid = 13, containmentType = -1},
		{templateFile = "object/tangible/terminal/terminal_elevator_up.iff", x = 0.14, z = 7.25, y = -2.19, ow = 0.915698, ox = 0, oy = 0.401868, oz = 0, cellid = 13, containmentType = -1},
		{templateFile = "object/tangible/terminal/terminal_elevator_down.iff", x = 0.29, z = 7.25, y = -2.34, ow = 0.944977, ox = 0, oy = 0.327135, oz = 0, cellid = 13, containmentType = -1},
		{templateFile = "object/tangible/terminal/terminal_elevator_down.iff", x = 0.29, z = 13.5, y = -2.34, ow = 0.906308, ox = 0, oy = 0.422618, oz = 0, cellid = 13, containmentType = -1},
		{templateFile = "object/tangible/terminal/terminal_elevator_up.iff", x = -0.14, z = 0.25, y = 2.24, ow = -0.390731, ox = 0, oy = 0.920505, oz = 0, cellid = 14, containmentType = -1},
		{templateFile = "object/tangible/terminal/terminal_elevator_up.iff", x = -0.13, z = 7.25, y = 2.18, ow = -0.423804, ox = 0, oy = 0.905754, oz = 0, cellid = 14, containmentType = -1},
		{templateFile = "object/tangible/terminal/terminal_elevator_down.iff", x = -0.29, z = 7.25, y = 2.34, ow = -0.303035, ox = 0, oy = 0.952979, oz = 0, cellid = 14, containmentType = -1},
		{templateFile = "object/tangible/terminal/terminal_elevator_down.iff", x = -0.29, z = 13.5, y = 2.34, ow = -0.390731, ox = 0, oy = 0.920505, oz = 0, cellid = 14, containmentType = -1}
	}
}

ObjectTemplates:addTemplate(object_building_general_ord_hospital, "object/building/general/ord_hospital.iff")
