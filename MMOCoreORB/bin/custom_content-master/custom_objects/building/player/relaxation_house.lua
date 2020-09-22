object_building_player_relaxation_house = object_building_player_shared_relaxation_house:new {
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
			{templateFile = "object/tangible/sign/player/house_address.iff", x = 4.2, z = 2, y = 10.25, ox = 0, oy = 1, oz = 0, ow = 0, cellid = -1, containmentType = -1},
			{templateFile = "object/tangible/terminal/terminal_player_structure.iff", x = 3.91035, z = 1.22656, y = 9.05219, ow = -5.96046e-08, ox = 0, oz = 0, oy = -1, cellid = 1, containmentType = -1},
	}
}

ObjectTemplates:addTemplate(object_building_player_relaxation_house, "object/building/player/relaxation_house.iff")
