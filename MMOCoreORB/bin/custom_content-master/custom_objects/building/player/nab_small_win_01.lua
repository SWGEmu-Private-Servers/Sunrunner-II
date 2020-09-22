object_building_player_naboo_small_window_s01 = object_building_player_shared_naboo_small_window_s01:new {
	lotSize = 2,
	baseMaintenanceRate = 16,
	allowedZones = {"dantooine", "naboo", "rori", "taanab", "kuat"},
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
			{templateFile = "object/tangible/sign/player/house_address_naboo.iff", x = 1.55, z = 2, y = -8.36, ox = 0, oy = 0, oz = 0, ow = 1, cellid = -1, containmentType = -1},
			{templateFile = "object/tangible/terminal/terminal_player_structure.iff", x = 3.24896, z = 0.7, y = 5.45397, ow = -0.707107, ox = 0, oz = 0, oy = 0.707107, cellid = 1, containmentType = -1},
	}

}

ObjectTemplates:addTemplate(object_building_player_naboo_small_window_s01, "object/building/player/naboo_small_window_s01.iff")
