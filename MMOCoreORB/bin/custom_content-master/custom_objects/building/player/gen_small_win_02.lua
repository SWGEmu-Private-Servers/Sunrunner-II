object_building_player_generic_small_window_s02 = object_building_player_shared_generic_small_window_s02:new {
	lotSize = 2,
	baseMaintenanceRate = 10,
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
			{templateFile = "object/tangible/sign/player/house_address.iff", x = 4, z = 2, y = 6.9, ox = 0, oy = -1, oz = 0, ow = 0, cellid = -1, containmentType = -1},
			{templateFile = "object/tangible/terminal/terminal_player_structure.iff", x = -0.289745, z = 0.526079, y = 4.36105, ow = 0, ox = 0, oz = 0, oy = -1, cellid = 1, containmentType = -1},
	}
}

ObjectTemplates:addTemplate(object_building_player_generic_small_window_s02, "object/building/player/generic_small_window_s02.iff")
