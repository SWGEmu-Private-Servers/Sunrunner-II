object_building_player_generic_large_window_s02 = object_building_player_shared_generic_large_window_s02:new {
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
			{templateFile = "object/tangible/sign/player/house_address.iff", x = 1, z = 3, y = -11.26, ox = 0, oy = 0, oz = 0, ow = 1, cellid = -1, containmentType = -1},
			{templateFile = "object/tangible/terminal/terminal_player_structure.iff", x = 8.16041, z = 0.511061, y = -8.5, ow = 1, ox = 0, oz = -0, oy = -1.35103e-07, cellid = 1, containmentType = -1}
	}
}

ObjectTemplates:addTemplate(object_building_player_generic_large_window_s02, "object/building/player/generic_large_window_s02.iff")
