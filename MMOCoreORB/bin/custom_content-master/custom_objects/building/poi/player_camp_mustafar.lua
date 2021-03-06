object_building_poi_player_camp_mustafar = object_building_poi_shared_player_camp_mustafar:new {
	templateType = CAMPSTRUCTURE,
	lotSize = 0,
	baseMaintenanceRate = 0,
	basePowerRate = 0,
	skillMods = {
		{"private_safe_logout", 1},
		{"private_medical_rating", 70},
		{"private_med_wound_health", 40},
		{"private_med_wound_action", 40},
		{"private_aggro_mod", 20},
		{"private_buff_mind", 100},
		{"private_med_battle_fatigue", 15}
	},

	aggroMod = 20,
	duration = 3600,
	radius = 18,
	experience = 800,
	skillRequired = 90,

	childObjects = {
		{templateFile = "object/tangible/camp/camp_control_panel.iff", x = 3, z = 0, y = 0, ox = 0, oy = 0, oz = 0, ow = 0, cellid = -1, containmentType = -1},
		
		{templateFile = "object/building/mustafar/structures/must_smuggler_watchtower.iff", x = 0, z = 11, y = 0, ox = 0, oy = 0, oz = 0, ow = 0, cellid = -1, containmentType = -1},

	}
}

ObjectTemplates:addTemplate(object_building_poi_player_camp_mustafar, "object/building/poi/player_camp_mustafar.iff")
