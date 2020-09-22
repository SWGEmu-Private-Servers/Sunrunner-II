object_building_poi_player_camp_kashyyyk = object_building_poi_shared_player_camp_kashyyyk:new {
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
		{templateFile = "object/tangible/camp/camp_control_panel.iff", x = 7.6, z = 0, y = 7.6, ox = 0, oy = 0, oz = 0, ow = 0, cellid = -1, containmentType = -1},

		{templateFile = "object/tangible/furniture/ep3_rewards/wke_ceremonial_chair.iff", x = 3, z = 1.4, y = 0, ox = 0, oy = -0.678, oz = .0, ow = 0.735, cellid = -1, containmentType = -1},

{templateFile = "object/tangible/furniture/ep3_rewards/wke_ceremonial_chair.iff", x = 0, z = 1.4, y = -3, ox = 0, oy = 0, oz = .0, ow = 0, cellid = -1, containmentType = -1},

		{templateFile = "object/building/kashyyyk/mun_kash_elder_hut.iff", x = 0, z = 0, y = 0, ox = 0, oy = 0, oz = 0, ow = 0, cellid = -1, containmentType = -1},

		{templateFile = "object/tangible/furniture/ep3_rewards/ritual_fire_pit.iff", x = 0, z = 1.5, y = 0, ox = 0, oy = 0, oz = 0, ow = 0, cellid = -1, containmentType = -1},

	}
}

ObjectTemplates:addTemplate(object_building_poi_player_camp_kashyyyk, "object/building/poi/player_camp_kashyyyk.iff")
