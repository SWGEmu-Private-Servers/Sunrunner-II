object_building_general_npe_space_station = object_building_general_shared_npe_space_station:new {
	customObjectName = "Aboard a space station",
	spawningPoints = {
			{ x = -12.8, z = 0.6, y = -48.4, ow = 0.806, ox = 0, oz = 0, oy = -0.592, cellid = 14 },
			{ x = -18.1, z = 0.6, y = -46.7, ow = 0.597, ox = 0, oz = 0, oy = 0.802, cellid = 14 },
			{ x = -16.3, z = 0.6, y = -50.0, ow = 0.986, ox = 0, oz = 0, oy = 0.167, cellid = 14 },
			},
	templateType = CLONINGBUILDING,
	planetMapCategory = "cloningfacility",
	facilityType = CLONER_STANDARD,
	skillMods = {
		{"private_medical_rating", 105},
		{"private_buff_mind", 105},
		{"private_med_battle_fatigue", 5},
	},

	childObjects = {
		{templateFile = "object/tangible/terminal/terminal_elevator_up.iff", x = 37.813, z = -0.993, y = -1.257, ow = 0.7, ox = 0, oy = 0.7, oz = 0, cellid = 27, containmentType = -1},
		{templateFile = "object/tangible/terminal/terminal_elevator_down.iff", x = 37.818, z = -0.993, y = 1.228, ow = 0.7, ox = 0, oy = 0.7, oz = 0, cellid = 27, containmentType = -1},
		{templateFile = "object/tangible/terminal/terminal_elevator_up.iff", x = 37.8133, z = -30.9925, y = 1.26517, ow = 0.7, ox = 0, oy = 0.7, oz = 0, cellid = 27, containmentType = -1},
		{templateFile = "object/tangible/terminal/terminal_elevator_down.iff", x = 37.8346, z = 29.0075, y = 1.25458, ow = 0.7, ox = 0, oy = 0.7, oz = 0, cellid = 27, containmentType = -1},
	}
}
ObjectTemplates:addTemplate(object_building_general_npe_space_station, "object/building/general/npe_space_station.iff")
