object_building_player_vipbunker_house = object_building_player_shared_vipbunker_house:new {
	lotSize = 2,
	baseMaintenanceRate = 16,
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
		{templateFile = "object/tangible/sign/player/house_address.iff", x = -3, z = 2, y = 0.5, ox = 0, oy = 1, oz = 0, ow = 1, cellid = -1, containmentType = -1},
		{templateFile = "object/tangible/terminal/terminal_player_structure.iff", x = -2.87107, z = 0.469495, y = 3.79867, ow = 1, ox = 0, oz = 0, oy = -4.37114, cellid = 1, containmentType = -1}
	},
}

ObjectTemplates:addTemplate(object_building_player_vipbunker_house, "object/building/player/vipbunker_house.iff")
