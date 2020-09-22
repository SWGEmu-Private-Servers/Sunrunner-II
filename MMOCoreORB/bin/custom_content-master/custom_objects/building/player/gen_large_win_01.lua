object_building_player_generic_large_window_s01 = object_building_player_shared_generic_large_window_s01:new {
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
			{templateFile = "object/tangible/sign/player/house_address.iff", x = -13.71, z = 3.97, y = 9.15, ox = 0, oy = 1, oz = 0, ow = 0, cellid = -1, containmentType = -1},
			{templateFile = "object/tangible/terminal/terminal_player_structure.iff", x = -10.5, z = 1.235, y = 4.94141, ow = 0.707106, ox = 0, oz = 0, oy = -0.707107, cellid = 1, containmentType = -1}			
	}
}

ObjectTemplates:addTemplate(object_building_player_generic_large_window_s01, "object/building/player/generic_large_window_s01.iff")
