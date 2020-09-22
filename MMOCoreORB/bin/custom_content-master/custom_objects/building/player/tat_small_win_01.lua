object_building_player_tatooine_small_window_s01 = object_building_player_shared_tatooine_small_window_s01:new {
	lotSize = 2,
	baseMaintenanceRate = 16,
	allowedZones = {"dantooine", "lok", "tatooine", "taanab"},
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
			{templateFile = "object/tangible/sign/player/house_address_tatooine.iff", x = 4, z = 2, y = 7.9, ox = 0, oy = -1, oz = 0, ow = 0, cellid = -1, containmentType = -1},
			{templateFile = "object/tangible/terminal/terminal_player_structure.iff", x = 3.95738, z = 0.75, y = 6.02514, ow = 5.96046e-08, ox = 0, oz = 0, oy = 1, cellid = 1, containmentType = -1}
	}
}

ObjectTemplates:addTemplate(object_building_player_tatooine_small_window_s01, "object/building/player/tatooine_small_window_s01.iff")
