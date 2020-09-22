object_building_player_rebel_house = object_building_player_shared_rebel_house:new {
	lotSize = 5,
	baseMaintenanceRate = 50,
	allowedZones = {"corellia", "dantooine", "lok", "naboo", "rori", "talus", "tatooine", "taanab", "kuat"},
	constructionMarker = "object/building/player/construction/construction_player_house_corellia_large_style_01.iff",
	length = 1,
	width = 1,
	publicStructure = 0,
	skillMods = {
		{"private_medical_rating", 100},
		{"private_buff_mind", 100},
		{"private_med_battle_fatigue", 5},
		{"private_safe_logout", 1}
	},
	childObjects = {
			{templateFile = "object/tangible/sign/player/house_address.iff", x = 1.87, z = 4.62, y = 4.30, ox = 0, oy = -0.99635, oz = 0, ow = 0.08542, cellid = -1, containmentType = -1},
			{templateFile = "object/tangible/terminal/terminal_player_structure.iff", x = 2.31725, z = 25.4031, y = 1.06847, ow = -0.707107, ox = 0, oz = 0, oy = -0.707107, cellid = 2, containmentType = -1},
			{templateFile = "object/tangible/terminal/terminal_elevator_up.iff", x = 0.00394327, z = 1.06667, y = -0.949035, ow = -1, ox = 0, oz = 0, oy = -2.98023e-08, cellid = 1, containmentType = -1},
			{templateFile = "object/tangible/terminal/terminal_elevator_down.iff", x = -0.0106941, z = 25.3031, y = -1.03047, ow = -1, ox = 0, oz = 0, oy = 0, cellid = 1, containmentType = -1}
	}

}

ObjectTemplates:addTemplate(object_building_player_rebel_house, "object/building/player/rebel_house.iff")
