object_building_player_tree_house = object_building_player_shared_tree_house:new {
	lotSize = 2,
	baseMaintenanceRate = 34,
	allowedZones = {"kashyyyk"},
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
		{templateFile = "object/tangible/sign/player/house_address.iff", x = -2, z = 6, y = 12.53, ow = 0, ox = 0, oz = 0, oy = 1, cellid = -1, containmentType = -1},
		{templateFile = "object/tangible/terminal/terminal_player_structure.iff", x = -21.1796, z = 0.972775, y = 5.97545, ow = 0.707107, ox = 0, oz = 0, oy = 0.707107, cellid = 1, containmentType = -1}
	}
}

ObjectTemplates:addTemplate(object_building_player_tree_house, "object/building/player/tree_house.iff")
