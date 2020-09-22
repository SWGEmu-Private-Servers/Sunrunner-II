--Copyright (C) 2007 <SWGEmu>

--This File is part of Core3.

--This program is free software; you can redistribute
--it and/or modify it under the terms of the GNU Lesser
--General Public License as published by the Free Software
--Foundation; either version 2 of the License,
--or (at your option) any later version.

--This program is distributed in the hope that it will be useful,
--but WITHOUT ANY WARRANTY; without even the implied warranty of
--MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
--See the GNU Lesser General Public License for
--more details.

--You should have received a copy of the GNU Lesser General
--Public License along with this program; if not, write to
--the Free Software Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA

--Linking Engine3 statically or dynamically with other modules
--is making a combined work based on Engine3.
--Thus, the terms and conditions of the GNU Lesser General Public License
--cover the whole combination.

--In addition, as a special exception, the copyright holders of Engine3
--give you permission to combine Engine3 program with free software
--programs or libraries that are released under the GNU LGPL and with
--code included in the standard release of Core3 under the GNU LGPL
--license (or modified versions of such code, with unchanged license).
--You may copy and distribute such a system following the terms of the
--GNU LGPL for Engine3 and the licenses of the other code concerned,
--provided that you include the source code of that other code when
--and as the GNU LGPL requires distribution of source code.

--Note that people who make modified versions of Engine3 are not obligated
--to grant this special exception for their modified versions;
--it is their choice whether to do so. The GNU Lesser General Public License
--gives permission to release a modified version without this exception;
--this exception also makes it possible to release a modified version
--which carries forward this exception.

--Time, in seconds, that a shuttle is away for
shuttleportAwayTime = 60
starportAwayTime = 60

--Time, in seconds, that a shuttle takes to land
shuttleportLandingTime = 11
starportLandingTime = 14

--Time, in seconds, that a shuttle is landed for
shuttleportLandedTime = 120
starportLandedTime = 120


corellia = {
	weatherEnabled = 1,
	gcwEnabled = 1,

	outpostRegionNames = { },

	planetTravelPoints = {
		{name = "Coronet Shuttle B", x = -329.76605, z = 28, y = -4641.23, interplanetaryTravelAllowed = 0, incomingTravelAllowed = 1},
		{name = "Coronet Shuttle A", x = -25.671804, z = 28, y = -4409.7847, interplanetaryTravelAllowed = 0, incomingTravelAllowed = 1},
		{name = "Coronet Starport", x = -66.760902, z = 28, y = -4711.3281, interplanetaryTravelAllowed = 1, incomingTravelAllowed = 1},
		{name = "Vreni Island Shuttle", x = -5551.9473, z = 15.890146, y = -6059.9673, interplanetaryTravelAllowed = 0, incomingTravelAllowed = 1},
		{name = "Tyrena Shuttle B", x = -5600.6367, z = 21, y = -2790.7429, interplanetaryTravelAllowed = 0, incomingTravelAllowed = 1},
		{name = "Tyrena Shuttle A", x = -5005.354, z = 21, y = -2386.9819, interplanetaryTravelAllowed = 0, incomingTravelAllowed = 1},
		{name = "Tyrena Starport", x = -5003.0649, z = 21, y = -2228.3665, interplanetaryTravelAllowed = 1, incomingTravelAllowed = 1},
		{name = "Kor Vella Shuttleport", x = -3775.2546, z = 31, y = 3234.2202, interplanetaryTravelAllowed = 0, incomingTravelAllowed = 1},
		{name = "Kor Vella Starport", x = -3157.2834, z = 31, y = 2876.2029, interplanetaryTravelAllowed = 1, incomingTravelAllowed = 1},
		{name = "Doaba Guerfel Shuttleport", x = 3085.4963, z = 280, y = 4993.0098, interplanetaryTravelAllowed = 0, incomingTravelAllowed = 1},
		{name = "Doaba Guerfel Starport", x = 3349.8933, z = 308, y = 5598.1362, interplanetaryTravelAllowed = 1, incomingTravelAllowed = 1},
		{name = "Bela Vistal Shuttleport A", x = 6644.269, z = 330, y = -5922.5225, interplanetaryTravelAllowed = 0, incomingTravelAllowed = 1},
		{name = "Bela Vistal Shuttleport B", x = 6930.8042, z = 330, y = -5534.8936, interplanetaryTravelAllowed = 0, incomingTravelAllowed = 1},
		--{name = "Imperial Camp at Stronghold", x = 4655, z = 25, y = -5800, interplanetaryTravelAllowed = 0, incomingTravelAllowed = 1}
	
	},

	badgeAreas = {
		{"badge_agrilat_swamp",1387,3749,0,30,56},
		{"badge_rebel_hideout",-6530,5967,0,30,57},
		{"badge_rogue_corsec_base",5291,1494,0,30,58},
		{"badge_tyrena_theater",-5418,-6248,0,30,59},
		{"badge_bela_vistal_fountain",6767,-5617,0,30,60},
	},

	navAreas = {
		{"imperial_detachment_hq",-2977,2908,50},
		{"lonely_wall",2547,4744,40},
		{"lord_nyaxs_cult",1357,-323,50},
		{"rebel_hideout",-6504,5993,100},
		{"rogue_corsec_base",5222,1588,100},
		{"stronghold",4665,-5781,100},
	},

	planetObjects = {
		--{templateFile = "object/tangible/terminal/terminal_character_builder.iff", ox = 0, oy = -0.664289, oz = 0, ow = 0.747476, x = -133.192, z = 28, y = -4711.16, parentid = 0},
		--{templateFile = "object/tangible/terminal/terminal_character_builder.iff", ox = 0, oy = 0.346712, oz = 0, ow = 0.937972, x = -5049.64, z = 21, y = -2304.52, parentid = 0},
		--{templateFile = "object/tangible/terminal/terminal_character_builder.iff", ox = 0, oy = 0.290803, oz = 0, ow = 0.956783, x = 3330.38, z = 308, y = 5517.14, parentid = 0},
		--{templateFile = "object/tangible/terminal/terminal_character_builder.iff", ox = 0, oy = -0.666281, oz = 0, ow = 0.745701, x = -136.437, z = 28, y = -4730.23, parentid = 0}
	}
}

dantooine = {
	weatherEnabled = 1,
	gcwEnabled = 1,

	outpostRegionNames = {
		{name = "@dantooine_region_names:dantooine_mining_outpost", x = -640, y = 2486},
		{name = "@dantooine_region_names:dantooine_pirate_outpost", x = 1588, y = -6399},
		{name = "@dantooine_region_names:dantooine_imperial_outpost", x = -4224, y = -2400},
	},

	planetTravelPoints = {
		{name = "Dantooine Mining Outpost", x = -635.96887, z = 3, y = 2507.0115, interplanetaryTravelAllowed = 1, incomingTravelAllowed = 1},
		{name = "Dantooine Imperial Outpost", x = -4208.6602, z = 3, y = -2350.24, interplanetaryTravelAllowed = 1, incomingTravelAllowed = 1},
		{name = "Dantooine Agro Outpost", x = 1569.66, z = 4, y = -6415.7598, interplanetaryTravelAllowed = 1, incomingTravelAllowed = 1}
	},

	badgeAreas = {
		{"badge_jedi_temple",4195,5203,0,30,71},
		{"badge_rebel_base",-6836,5520,0,30,72},
		{"badge_dantari_village1",-3929,-5632,0,30,73},
		{"badge_dantari_village2",-7185,-883,0,30,74},
	},

	navAreas = {
		{"abandoned_rebel_base",-6882,5540,300},
		{"dantari_village_east",5559,-654,75},
		{"dantari_village_sw",-3836,-5720,100},
		{"dantari_village_west",-7185,-861,100},
		{"jedi_temple_ruins",4203,5222,100},
		{"mokk_stronghold",-7046,-3332,50},
		{"native_village",7181,887,75},
		{"ris_armor_hut",-6805,6021,32},
		{"the_warren",-550,-3834,50},
	},

	planetObjects = {
		--{templateFile = "object/tangible/terminal/terminal_character_builder.iff", ox = 0, oy = 0.695864, oz = 0, ow = 0.718174, x = 1585.68, z = 4, y = -6368.95, parentid = 0},
		--{templateFile = "object/tangible/terminal/terminal_character_builder.iff", ox = 0, oy = 0.725999, oz = 0, ow = -0.687696, x = -629.417, z = 3, y = 2481.24, parentid = 0}
	}
}

dathomir = {
	weatherEnabled = 1,
	gcwEnabled = 1,

	outpostRegionNames = { },

	planetTravelPoints = {
		{name = "Trade Outpost", x = 618.89258, z = 6.039608, y = 3092.0142, interplanetaryTravelAllowed = 1, incomingTravelAllowed = 1},
		{name = "Science Outpost", x = -49.021923, z = 18, y = -1584.7278, interplanetaryTravelAllowed = 1, incomingTravelAllowed = 1}
	},

	badgeAreas = {
		{"badge_tarpit",652,-4888,0,30,64},
		{"badge_sarlacc",-2101,3165,0,30,65},
		{"badge_escape_pod",-4427,586,0,30,66},		
		{"badge_misty_falls_1",3558,1554,0,30,67},
		{"badge_misty_falls_2",3021,1289,0,30,68},
		{"badge_crashed_ship",5676,1901,0,30,69},
		{"badge_imperial_prison",-6141,973,0,30,70},

	},

	navAreas = {
		{"ancient_stone_hut",3490,-395,64},
		{"burial_site_nw",-5259,1299,32},
		{"ceremonial_site",1072,-4485,50},
		{"dathomir_worship_stone",-6953,-3032,32},
		{"destroyed_rebel_base",-4705,-4772,50},
		{"empty_hut",-6894,-4854,32},
		{"fenced_building",50,-164,32},
		{"floating_rocks_ne",3000,-5145,32},
		{"floating_rocks_sw_2",-6603,-745,60},
		{"free_slaves_and_huts",7205,5560,32},
		{"lookout_station",-4573,-6556,32},
		{"nightsister_beach_tower",915,6858,32},
		{"nightsister_guard_camp",-4179,-854,32},
		{"nightsister_outcast_camp",-2597,4953,32},
		{"nightsister_outcasts_home",-3250,-6585,32},
		{"nightsister_stalkers_home",-2933,-1025,32},
		{"nightsister_stronghold",-4050,-175,200},
		{"singing_mountain_clan_arch",1125,-1022,32},
		{"singing_mountain_clan_hut",5556,-688,32},
		{"singing_mountain_clan_outcasts_hut",7480,-912,32},
		{"singing_mountain_clan_rock_se",5205,-3084,32},
		{"singing_mountain_clan_rock_sw",-2419,-3111,32},
		{"singing_mountain_clan_village",530,4205,100},
		{"singing_mountain_clan_village_nw",-7081,5888,50},
		{"spiderclan_floating_rocks",-7120,2931,32},
		{"spiderclan_stone_arch",7070,-6440,32},
		{"torch",-2610,-4861,32},
		{"tower_and_stones",-443,-1156,32},
		{"tree_hut",-5045,-2773,32},
		{"wall",7442,-3024,32},
	},

	planetObjects = {
		--{templateFile = "object/tangible/terminal/terminal_character_builder.iff", ox = 0, oy = 0.701463, oz = 0, ow = 0.712705, x = 592.612, z = 6, y = 3089.84, parentid = 0},
		--{templateFile = "object/tangible/terminal/terminal_character_builder.iff", ox = 0, oy = 0.314904, oz = 0, ow = 0.949123, x = -67.6585, z = 18, y = -1595.3, parentid = 0},
		--{templateFile = "object/tangible/terminal/terminal_character_builder.iff", ox = 0, oy = 0.314904, oz = 0, ow = 0.949123, x = 5289.6, z = 78.5, y = -4146.1, parentid = 0}
	}
}

endor = {
	weatherEnabled = 1,
	gcwEnabled = 1,

	outpostRegionNames = {
		{name = "@endor_region_names:endor_smuggler_outpost", x = -905, y = 1584},
		{name = "@endor_region_names:endor_neutral_outpost", x = 3221, y = -3471},
	},

	planetTravelPoints = {
		{name = "Smuggler Outpost", x = -950.59241, z = 73, y = 1553.4125, interplanetaryTravelAllowed = 1, incomingTravelAllowed = 1},
		{name = "Research Outpost", x = 3201.6599, z = 24, y = -3499.76, interplanetaryTravelAllowed = 1, incomingTravelAllowed = 1}
	},

	badgeAreas = {
		{"badge_ewok_tree_villlage",4661,-2425,0,30,75},
		{"badge_lake_villlage",1454,-3272,0,30,76},
		{"badge_dulok_villlage",5921,-2514,0,30,77},
		{"badge_imp_outpost",-4628,-2273,0,30,78},
	},

	navAreas = {
		{"donkuwah_hut",4032,-7669,32},
		{"dulok_village_nw",-1205,2965,100},
		{"dulok_village_se",6063,-2473,100},
		{"ewok_lake_village_s",-575,-5066,128},
		{"ewok_lake_village_se",1432,-3268,160},
		{"ewok_tree_village_north",82,39,60},
		{"ewok_tree_village_east",4551,-2409,100},
		{"marauder_stronghold",-4628,-2273,100},
		{"merek_spawns",3901,5780,50},
		{"panshee_hut",-5452,-2185,32},
		{"panshee_shaman_hut",-7559,4457,32},
		{"pubam_shaman_hut",-6880,1364,32},
	},

	planetObjects = {
		--{templateFile = "object/tangible/terminal/terminal_character_builder.iff", ox = 0, oy = 0.932952, oz = 0, ow = -0.360002, x = -963.537, z = 73, y = 1556.86, parentid = 0},
		--{templateFile = "object/tangible/terminal/terminal_character_builder.iff", ox = 0, oy = 0.723459, oz = 0, ow = -0.690367, x = 3240.5, z = 24, y = -3484.79, parentid = 0},
	}
}

lok = {
	weatherEnabled = 1,
	gcwEnabled = 1,

	outpostRegionNames = {
		{name = "@lok_region_names:lok_imperial_outpost", x = -1920, y = -3084},
	},

	planetTravelPoints = {
		{name = "Nym's Stronghold", x = 478.92676, z = 9, y = 5511.9565, interplanetaryTravelAllowed = 1, incomingTravelAllowed = 1}
	},

	badgeAreas = {
		{"badge_imp_outpost",-1814,-3086,0,10,87},
		{"badge_kimogila_skeleton",4562,-1156,0,10,88},
		{"badge_volcano",3091,-4638,0,10,89},
	},

	navAreas = {
		{"abandoned_camp",-234,-457,32},
		{"camp_ruins",5075,-4117,15},
		{"canyon_corsair_stronghold",-3868,-3820,128},
		{"downed_blood_razor_transport",3640,2178,128},
		{"great_maze",3827,-540,50},
		{"gurk_camp",-3763,-3477,32},
		{"imperial_lookout",-2569,-861,32},
		{"kimogila_town",-78,2710,50},
		{"lok_broken_wall",-4433,-5750,32},
		{"lokkian_fountain",6399,5102,32},
		{"rebel_house",-4751,3525,75},
		{"torches_and_arches",716,-3380,32},
		{"crimson_marauder_stronghold",-3000,600,512},
	},

	planetObjects = {
		--{templateFile = "object/tangible/terminal/terminal_character_builder.iff", ox = 0, oy = 0.999879, oz = 0, ow = 0.015506, x = 464.677, z = 8.75806, y = 5506.49, parentid = 0}
	}
}

naboo = {
	weatherEnabled = 1,
	gcwEnabled = 1,

	outpostRegionNames = { },

	planetTravelPoints = {
		{name = "Keren Starport", x = 1371.5938, z = 13, y = 2747.9043, interplanetaryTravelAllowed = 1, incomingTravelAllowed = 1},
		{name = "Keren Shuttleport South", x = 1567.5193, z = 25, y = 2837.8777, interplanetaryTravelAllowed = 0, incomingTravelAllowed = 1},
		{name = "Keren Shuttleport", x = 2021.0026, z = 19, y = 2525.679, interplanetaryTravelAllowed = 0, incomingTravelAllowed = 1},
		{name = "Theed Shuttle A", x = -5856.1055, z = 6, y = 4172.1606, interplanetaryTravelAllowed = 0, incomingTravelAllowed = 1},
		{name = "Theed Shuttle B", x = -5005, z = 6, y = 4072, interplanetaryTravelAllowed = 0, incomingTravelAllowed = 1},
		{name = "Theed Shuttle C", x = -5411.0171, z = 6, y = 4322.3315, interplanetaryTravelAllowed = 0, incomingTravelAllowed = 1},
		{name = "Theed Spaceport", x = -4858.834, z = 5.9483199, y = 4164.0679, interplanetaryTravelAllowed = 1, incomingTravelAllowed = 1},
		{name = "The Lake Retreat", x = -5494.4224, z = -150, y = -21.837162, interplanetaryTravelAllowed = 0, incomingTravelAllowed = 1},
		{name = "Moenia", x = 4731.1743, z = 4.1700001, y = -4677.5439, interplanetaryTravelAllowed = 1, incomingTravelAllowed = 1},
		{name = "Moenia Shuttleport", x = 4961.9409, z = 3.75, y = -4892.6997, interplanetaryTravelAllowed = 0, incomingTravelAllowed = 1},
		{name = "Dee'ja Peak Shuttleport", x = 5331.9375, z = 327.02765, y = -1576.6733, interplanetaryTravelAllowed = 0, incomingTravelAllowed = 1},
		{name = "Kaadara Starport", x = 5280.2002, z = -192, y = 6688.0498, interplanetaryTravelAllowed = 1, incomingTravelAllowed = 1},
		{name = "Kaadara Shuttleport", x = 5123.3857, z = -192, y = 6616.0264, interplanetaryTravelAllowed = 0, incomingTravelAllowed = 1}
	},

	badgeAreas = {
		{"badge_gungan_sacred_place",-2000,-5429,0,10,52},
		{"badge_theed_falls_bottom",-4614,4261,0,10,53},
		{"badge_deeja_falls_top",5161,-1627,0,10,54},
		{"badge_amidalas_sandy_beach",-5828,-93,0,10,55},
	},

	navAreas = {
		{"amidalas_beach",-5526,-31,128},
		{"beach_gungan_ruins",7570,6968,32},
		{"emperors_retreat",2415,-3921,100},
		{"fire_and_pillars",-1775,-487,32},
		{"fishing_pond",-6312,-5086,32},
		{"gate_and_gazebo",-258,-61,32},
		{"gungan_ruins",0,-1866,32},
		{"gungan_sacred_place",-1991,-5422,200},
		{"imperial_outpost",-4769,-3982,32},
		{"mauler_stronghold",2912,1118,50},
		{"naboo_broken_wall",3485,-2882,32},
		{"naboo_crashed_escape_pod",-2433,-2492,32},
		{"naboo_pirate_outpost",-1496,-1728,50},
		{"pillars",7263,-2973,32},
		{"ruined_gate",-7324,-4149,32},
		{"ruined_walls",-3586,-880,32},
		{"statue_and_ruins",-189,-905,32},
		{"statue_heads",3422, 5080, 32},
		{"statues_with_fire",-1634,-4035,32},
		{"skaak_tipper_bunker",6692,7183,130},
		{"weapon_development_faciliy",-6505,-3310,96},
		{"naboo_battlefield",977,-1500,75},
	    {"newbie_borvo_bunker", -4750,4850,64},
		{"newbie_gungan_bunker", -4180,3880,64},		
		{"newbie_plasma_thief_cave",-4289,4358,64},
	},

	planetObjects = {
		--{templateFile = "object/tangible/terminal/terminal_character_builder.iff", ox = 0, oy = 0.715602, oz = 0, ow = -0.698509, x = 4824.53, z = 4.17, y = -4704.9, parentid = 0},
		--{templateFile = "object/tangible/terminal/terminal_character_builder.iff", ox = 0, oy = 0.309582, oz = 0, ow = 0.950873, x = -4876.99, z = 6, y = 4142.12, parentid = 0},
		--{templateFile = "object/tangible/terminal/terminal_character_builder.iff", ox = 0, oy = -0.0116238, oz = 0, ow = 0.999932, x = 5193.14, z = -192, y = 6680.25, parentid = 0},
		--{templateFile = "object/tangible/terminal/terminal_character_builder.iff", ox = 0, oy = -0.0116238, oz = 0, ow = -0.686427, x = 1445.8, z = 13, y = 2771.98, parentid = 0}
	}
}

rori = {
	weatherEnabled = 1,
	gcwEnabled = 1,

	outpostRegionNames = {
		{name = "@rori_region_names:sdungeon_rebel_outpost", x = 3677, y = -6447},
	},

	planetTravelPoints = {
		{name = "Restuss Starport", x = 5340, z = 80, y = 5734, interplanetaryTravelAllowed = 1, incomingTravelAllowed = 1},
		{name = "Restuss Shuttleport", x = 5211, z = 80, y = 5791, interplanetaryTravelAllowed = 0, incomingTravelAllowed = 1},
		{name = "Narmle Starport", x = -5374.0718, z = 80, y = -2188.6143, interplanetaryTravelAllowed = 1, incomingTravelAllowed = 1},
		{name = "Narmle Shuttleport", x = -5255.4116, z = 80.664185, y = -2161.6274, interplanetaryTravelAllowed = 0, incomingTravelAllowed = 1},
		{name = "Rebel Outpost", x = 3691.9023, z = 96, y = -6403.4404, interplanetaryTravelAllowed = 1, incomingTravelAllowed = 1}
	},

	badgeAreas = {
		{"badge_kobala_spice_mine",7304,63,0,10,83},
		{"badge_rebel_outpost",3664,-6501,0,10,84},
		{"badge_imp_camp",-5633,-5661,0,10,85},
		{"badge_imp_hyperdrive_fac",-1130,4544,0,10,86},

	},

	navAreas = {
		{"4_columns",-432,3264,32},
		{"cobral_tent",-4972,-670,32},
		{"crashed_corvette",0,2012,50},
		{"crashed_escape_pod_east",4272,2509,32},
		{"crashed_escape_pod_north",959,6899,32},
		{"debris",-989,-315,32},
		{"flooded_ruins",2528,7260,32},
		{"gate",2996,-3668,32},
		{"gazebo",3783,-4473,32},
		{"graveyard",-1710,6144,32},
		{"imperial_encampment",-5565,-5660,75},
		{"narmle_militia_estate",5207,1023,32},
		{"partially_buried_gazebo",1001,5360,32},
		{"rancher_and_pets",-431,-5434,32},
		{"rebel_outpost",-5348,5042,75},
		{"rorgungan_gravestones",1163,698,32},
		{"rorgungan_monument_north",-70,5229,64},
		{"rorgungan_monument_nw",-5819,5826,32},
		{"rorgungan_ruins_east_1",3593,345,32},
		{"rorgungan_ruins_east_2",6119,-509,32},
		{"rorgungan_ruins_central",-1491,1684,32},
		{"rorgungan_ruins_ne",3379,5861,32},
		{"rorgungan_ruins_north",956,4049,32},
		{"rorgungan_ruins_se",3462,-2174,32},
		{"rorgungan_ruins_south",-2641,-752,32},
		{"rorgungan_ruins_sw",-6967,-5642,32},
		{"rorgungan_shield",-5507,2096,32},
		{"rorgungan_swamp_town",-2069,3301,100},
		{"rori_bounty_hunter_camp",-3650,5531,32},
		{"rori_ruins_east",5584,2436,32},
		{"rori_sunken_ruins",5961,-2598,32},
		{"ruined_outpost",5083,4676,32},
		{"ruins_ne",6684,6882,32},
		{"ruins_north",958,6521,32},
		{"ruins_nw_1",-4706,3580,32},
		{"ruins_nw_2",-2713,4486,32},
		{"ruins_south",-760,-4085,32},
		{"ruins_in_lake",1871,1761,32},
		{"small_imperial_base",6520,-4766,64},
		{"spike",-3392,-2098,32},
		{"statue",-2902,2588,32},
		{"statue_head_north_1",1116,3833,32},
		{"statue_head_north_2",961,4493,32},
		{"statue_head_west",-2140,614,32},
		{"wall_1",959,5080,64},
		{"wall_2",-1230,-3207,64},
		{"imperial_vs_rebel_battle",6000,-6700,512},
	},

	planetObjects = {
		--{templateFile = "object/tangible/terminal/terminal_character_builder.iff", ox = 0, oy = -0.100263, oz = 0, ow = 0.994961, x = -5307.37, z = 80.1274, y = -2216.91, parentid = 0},
		--{templateFile = "object/tangible/terminal/terminal_character_builder.iff", ox = 0, oy = -0.69192, oz = 0, ow = 0.721974, x = 5370.22, z = 80, y = 5666.04, parentid = 0},
		--{templateFile = "object/tangible/terminal/terminal_character_builder.iff", ox = 0, oy = -0.0274543, oz = 0, ow = 0.999623, x = 3672.91, z = 96, y = -6441.07, parentid = 0}
	}
}

talus = {
	weatherEnabled = 1,
	gcwEnabled = 1,

	outpostRegionNames = {
		{name = "@talus_region_names:talus_imperial_outpost", x = -2178, y = 2300},
	},

	planetTravelPoints = {
		{name = "Dearic Starport", x = 263.58401, z = 6, y = -2952.1284, interplanetaryTravelAllowed = 1, incomingTravelAllowed = 1},
		{name = "Dearic Shuttleport", x = 699.297, z = 6, y = -3041.4199, interplanetaryTravelAllowed = 0, incomingTravelAllowed = 1},
		{name = "Talus Imperial Outpost", x = -2226, z = 20, y = 2319, interplanetaryTravelAllowed = 1, incomingTravelAllowed = 1},
		{name = "Nashal Shuttleport", x = 4334.5786, z = 9.8999996, y = 5431.0415, interplanetaryTravelAllowed = 0, incomingTravelAllowed = 1},
		{name = "Nashal Starport", x = 4453.7212, z = 2, y = 5354.3345, interplanetaryTravelAllowed = 1, incomingTravelAllowed = 1}
	},

	badgeAreas = {
		{"badge_creature_village",4300,1020,0,30,79},
		{"badge_imp_base",-2185,2383,0,30,80},
		{"badge_imp_vs_reb_battle",-2595,3724,0,30,81},
		{"badge_aqualish_cave",-4425,-1414,0,30,82},
	},

	navAreas = {
		{"atst_cabin",-2771,1568,32},
		{"aqualish_fishing_spot",5348,4545,32},
		{"backbone",-5730,2856,32},
		{"binyare_pirate_bunker",5583,-4080,32},
		{"bridge",-150,323,32},
		{"bridge_and_debris",5480,1085,50},
		{"broken_atat",-2434,-2218,32},
		{"broken_bridge",-4046,3663,32},
		{"broken_flora_harvester",-4350,1542,32},
		{"burning_rocks",4310,2563,32},
		{"crashed_transport",-2400,2033,32},
		{"debris_central",-1729,-2886,32},
		{"debris_sw",-1011,-5092,32},
		{"detainment_center",4989,-6037,50},
		{"diseased_debris",-5139,3706,32},
		{"diseased_ruins",-5117,3213,96},
		{"erran_sif",2147,-5632,32},
		{"flag",-3460,1550,32},
		{"fountain",-3153,-922,32},
		{"four_stone_fire",-1832,1438,32},
		{"gas_harvester",-1470,1231,32},
		{"gateway",2338,2936,32},
		{"generator",-5647,-2370,32},
		{"geyser",-4595,5707,32},
		{"imperial_house_central",1718,1610,32},
		{"imperial_house_east",5985,-1185,32},
		{"imperial_watch_tower",3209,1262,32},
		{"kahmurra_biogenetic_research_station",-4799,-4752,32},
		{"large_broken_tower",-5517,1064,32},
		{"lake_monument",2445,2485,32},
		{"lost_aqualish_house",17,-910,32},
		{"lost_village_of_durbin",4215,1003,165},
		{"pillar",618,1100,32},
		{"pillars_ruins",4974,3849,32},
		{"quarantined_building",3886,-2848,32},
		{"rebel_camp",3100,-4044,32},
		{"rebel_installation",2371,-4989,50},
		{"red_fire",-1833,1437,32},
		{"ruined_lookout_tower",-4382,2673,32},
		{"ruins_central_1",-1394,2117,32},
		{"ruins_central_2",-1600,-540,32},
		{"ruins_nw",-3492,3697,32},
		{"scientist_camp",-3640,6332,32},
		{"selonian_camp",145,-5583,32},
		{"small_moisture_farm",-4916,-4510,32},
		{"talus_broken_walls",1115,1489,32},
		{"talus_crashed_escape_pod",-4984,5753,32},
		{"talus_ruins_east",5190,-1735,32},
		{"talus_sunken_ruins",-4575,4356,32},
		{"talus_worship_stone",-861,1020,32},
		{"three_stones",-1362,1060,32},
		{"weapons_depot",-4925,-3119,64},
		{"wind_generators",-4557,-2906,32},
		{"silent_shades", -5491,2893,250}
	},

	planetObjects = {
		--{templateFile = "object/tangible/terminal/terminal_character_builder.iff", ox = 0, oy = 0.996369, oz = 0, ow = -0.0851417, x = 4447.08, z = 2, y = 5286.96, parentid = 0},
		--{templateFile = "object/tangible/terminal/terminal_character_builder.iff", ox = 0, oy = 0.692641, oz = 0, ow = 0.721282, x = 329.666, z = 6, y = -2924.69, parentid = 0}
	}
}

tatooine = {
	weatherEnabled = 1,
	gcwEnabled = 1,

	outpostRegionNames = { },

	planetTravelPoints = {
		{name = "Mos Eisley Shuttleport", x = 3416.6914, z = 5, y = -4648.1411, interplanetaryTravelAllowed = 0, incomingTravelAllowed = 1},
		{name = "Mos Eisley Starport", x = 3599.894, z = 5, y = -4780.4487, interplanetaryTravelAllowed = 1, incomingTravelAllowed = 1},
		{name = "Bestine Starport", x = -1361.1917, z = 12, y = -3600.0254, interplanetaryTravelAllowed = 1, incomingTravelAllowed = 1},
		{name = "Bestine Shuttleport", x = -1098.4836, z = 12, y = -3563.5342, interplanetaryTravelAllowed = 0, incomingTravelAllowed = 1},
		{name = "Mos Espa Shuttleport South", x = -2897.0933, z = 5, y = 1933.4144, interplanetaryTravelAllowed = 0, incomingTravelAllowed = 1},
		{name = "Mos Espa Shuttleport West", x = -3112.1296, z = 5, y = 2176.9607, interplanetaryTravelAllowed = 0, incomingTravelAllowed = 1},
		{name = "Mos Espa Starport", x = -2833.1609, z = 5, y = 2107.3787, interplanetaryTravelAllowed = 1, incomingTravelAllowed = 1},
		{name = "Mos Espa Shuttleport East", x = -2803.511, z = 5, y = 2182.9648, interplanetaryTravelAllowed = 0, incomingTravelAllowed = 1},
		{name = "Anchorhead Shuttleport", x = 47.565128, z = 52, y = -5338.9072, interplanetaryTravelAllowed = 0, incomingTravelAllowed = 1},
		{name = "Mos Entha Spaceport", x = 1266.0996, z = 7, y = 3065.1392, interplanetaryTravelAllowed = 1, incomingTravelAllowed = 1},
		{name = "Mos Entha Shuttle B", x = 1395.447, z = 7, y = 3467.0117, interplanetaryTravelAllowed = 0, incomingTravelAllowed = 1},
		{name = "Mos Entha Shuttle A", x = 1730.8828, z = 7, y = 3184.6135, interplanetaryTravelAllowed = 0, incomingTravelAllowed = 1},
		{name = "Wayfar Shuttleport", x = -5089.11, z = 74.98, y = -6593.74, interplanetaryTravelAllowed = 0, incomingTravelAllowed = 1}
	},

	badgeAreas = {
		{"badge_bens_hut",-4512,-2270,0,10,45},
		{"badge_tusken_pool",-3971,6267,1189178,10,46},
		{"badge_krayt_graveyard",7396,4478,0,10,51},
		{"badge_escape_pod",-3930,-4425,0,10,48},
		{"badge_sarlacc_pit",-6176,-3372,0,10,49},
		{"badge_lars_homestead",-2579,-5500,0,10,50},
		{"badge_krayt_skeleton",-4650,-4363,0,10,47},

	},

	navAreas = {
		{"broken_house",2315,3255,32},
		{"broken_machinery",-4698,5456,32},
		{"building_ruins_1",588,348,50},
		{"building_ruins_2",6395,195,32},
		{"buried_building",-2041,2593,32},
		{"crashed_escape_pod_2",-6174,5886,32},
		{"darklighter_estate",-695,-6721,164},
		{"fort_tusken",-3981,6261,128},
		{"imperial_oasis",-5315,2685,128},
		{"jawa_traders",-6120,1872,100},
		{"makeshift_camp",-4464,5784,32},
		{"mark_of_honor_ranch",5002,-4684,75},
		{"pirate_camp",-4931,1260,32},
		{"tatooine_maze",-3029,-5113,32},
		{"tusken_bunker",-1476,-180,32},
		{"tusken_king_outpost",-5315,-4440,60},
		{"tusken_outpost_east",5693,1871,75},
		{"ranchers_camp",-3168,3638,32},
		{"rock_pillar",-6449,2614,32},
		{"ruined_building",-4878,2950,32},
		{"ruins_and_skeletons",-5723,6483,32},
		{"tatooine_bounty_hunter_camp",7044,7047,32},
		{"tatooine_broken_walls",2980,6465,32},
		{"tat_battleground", 5750,164,165},
	},

	planetObjects = {
		--{templateFile = "object/tangible/terminal/terminal_character_builder.iff", ox = 0, oy = 0.768226, oz = 0, ow = -0.640178, x = 3533.04, z = 5, y = -4796, parentid = 0},
		--{templateFile = "object/tangible/terminal/terminal_character_builder.iff", ox = 0, oy = -0.486657, oz = 0, ow = 0.873593, x = -1271.07, z = 12, y = -3590.22, parentid = 0},
		--{templateFile = "object/tangible/terminal/terminal_character_builder.iff", ox = 0, oy = -0.514176, oz = 0, ow = 0.857684, x = -2896.35, z = 5, y = 2130.87, parentid = 0},
		--{templateFile = "object/tangible/terminal/terminal_character_builder.iff", ox = 0, oy = 0.989124, oz = 0, ow = -0.147086, x = 1299.08, z = 7, y = 3145.21, parentid = 0}
	}
}

yavin4 = {
	weatherEnabled = 1,
	gcwEnabled = 1,

	outpostRegionNames = {
		{name = "@yavin4_region_names:yavin4_mining_outpost", x = -312, y = 4865},
		{name = "@yavin4_region_names:yavin4_labor_outpost", x = -6925, y = -5707},
	},

	planetTravelPoints = {
		{name = "Yavin IV Labor Outpost", x = -6921.6733, z = 73, y = -5726.5161, interplanetaryTravelAllowed = 1, incomingTravelAllowed = 1},
		{name = "Yavin IV Mining Outpost", x = -267.23914, z = 35, y = 4896.3013, interplanetaryTravelAllowed = 1, incomingTravelAllowed = 1},
		{name = "Yavin IV Imperial Outpost", x = 4054.1, z = 37, y = -6216.9, interplanetaryTravelAllowed = 1, incomingTravelAllowed = 0},
	},

	badgeAreas = {
		{"badge_temple_woolamander",519,-646,0,30,61},
		{"badge_yav_temple_blueleaf",-875,-2047,0,30,62},
		{"badge_temple_exar_kun",5097,5537,0,30,63},

	},

	navAreas = {
		{"dark_jedi_enclave",5080,306,100},
		{"geonosian_lab",-6440,-388,75},
		{"light_jedi_enclave",-5575,4901,100},
		{"massassi_temple",-3050,-2950,250},
		{"temple_blueleaf",-830,-2056,150},
		{"temple_exar_kun",5035,5537,150},
		{"woolamander_palace",547,-643,128},
		{"yavin4_imperial_base",4036,-6233,75},
	},

	planetObjects = {
		--{templateFile = "object/tangible/terminal/terminal_character_builder.iff", ox = 0, oy = -0.705623, oz = 0, ow = 0.708587, x = -6917.18, z = 73, y = -5732.25, parentid = 0},
		--{templateFile = "object/tangible/terminal/terminal_character_builder.iff", ox = 0, oy = 0.723339, oz = 0, ow = -0.690493, x = 4057.69, z = 37, y = -6217.54, parentid = 0},
		--{templateFile = "object/tangible/terminal/terminal_character_builder.iff", ox = 0, oy = 0.00721678, oz = 0, ow = 0.999974, x = -293.367, z = 35, y = 4854.52, parentid = 0}
	}
}


tutorial = {
	weatherEnabled = 0,
	gcwEnabled = 0,
}

hoth = {
	weatherEnabled = 1,
	gcwEnabled = 1,

	outpostRegionNames = { },

	planetTravelPoints = {
		{name = "Scavenger Outpost", x = 0, z = 0, y = -2000, interplanetaryTravelAllowed = 1, incomingTravelAllowed = 1},
		{name = "Rebel (PvP)", x = -5158, z = 103.5, y = 5720, interplanetaryTravelAllowed = 0, incomingTravelAllowed = 1},
		{name = "Imperial (PvP)", x = -4224, z = 84.7, y = 5757, interplanetaryTravelAllowed = 0, incomingTravelAllowed = 1},
	},

	badgeAreas = {
		{"exp_hoth_lake",0,-4000,0,30,99},
		{"exp_hoth_starport",0,-2000,0,30,100},
		{"exp_hoth_wampacave",-83,3001,0,30,101},
		{"exp_hoth_echobase",-5100,5100,0,30,102},		
	},

	navAreas = {
		{"hoth_starport",0,-2000,200},
		{"xh_1",-577,5368,50},
		{"xh_2",-2329,5129,50},
		{"xh_3",-3604,3813,50},
		{"xh_4",-4155,-555,50},
		{"xh_5",-4436,-1471,50},
		{"xh_6",-5743,-1298,50},
		{"xh_7",796,4862,50},
		{"xh_8",3553,4110,50},
		{"xh_9",3735,4024,50},
		{"xh_10",3419,4457,50},
		{"xh_11",3274,3003,50},
		{"xh_12",1620,1309,50},
		{"xh_13",2149,-245,50},
		{"xh_14",-5034,-2691,50},
		{"xh_15",-4035,-3264,50},
		{"xh_16",-2586,-1013,50},
		{"xh_17",-2445,-68,50},
		{"xh_18",-2512,1686,50},
		{"xh_19",-3374,1814,50},
		{"xh_20",-4212,1804,50},
		{"xh_21",-2285,3508,50},
		{"xh_22",2072,4026,50},
		{"xh_23",2388,2410,50},
		{"xh_24",4229,1419,50},
		{"xh_25",5257,1169,50},
		{"xh_26",5350,1325,50},
		{"xh_27",5197,1062,50},
		{"xh_28",5474,-597,50},
		{"xh_29",2767,387,50},
		{"xh_30",-149,1199,50},
		{"xh_31",2949,-3307,50},
		{"xh_32",1761,-4969,50},
		--{"echobase",-5100,5100,1000},	
		{"xh_33",-696,46,50},
		{"xh_34",1633,-2177,50},
		{"xh_35",-1079,-3934,50},
		{"xh_36",-36,-5246,50},
		{"xh_37",1217,-3563,50},
		{"xh_38",3463,-5146,50},
		{"xh_39",4549,-6575,50},
		{"xh_40",2638,-6392,50},
		{"xh_41",55,-6651,50},
		{"xh_42",-5589,-3310,50},
		{"xh_43",-1301,1826,50},
		{"xh_44",-840,4145,50},
		{"xh_45",514,1128,50},
		{"xh_46",2708,-624,50},
		{"xh_47",3762,-1877,50},
		{"xh_48",-3474,-3303,50},
		{"xh_49",-1543,-6237,50},
		{"xh_50",2373,4278,50},
		{"xh_51",1283,2558,50},
		{"xh_52",200,-168,50},
	},

	planetObjects = {
		--{templateFile = "object/tangible/terminal/terminal_character_builder.iff", ox = 0, oy = -0.705623, oz = 0, ow = 0.708587, x = 0, z = 0, y = -2020, parentid = 0},
	}
}

dungeon1 = {
	weatherEnabled = 0,
	gcwEnabled = 0,
}

dungeon2 = {
	weatherEnabled = 0,
	gcwEnabled = 0,

	outpostRegionNames = { },

	planetTravelPoints = {
		
		{name = "Tansarii Point Station", x = -250, z = 0, y = 0, interplanetaryTravelAllowed = 1, incomingTravelAllowed = 0},
	},

	badgeAreas = {
	},

	navAreas = {
		--{"tansarii_point_station", -250,0,500},
	},

	planetObjects = {

	}
}


dungeon3 = {
	weatherEnabled = 0,
	gcwEnabled = 0,

	outpostRegionNames = { },

	planetTravelPoints = {
		{name = "Nova Orion Station", x = 4000, z = 0, y = 6000, interplanetaryTravelAllowed = 1, incomingTravelAllowed = 0},
	},

	badgeAreas = {
	},

	navAreas = {	
		--{"nova_orion_station",4000,6000,1000},
	},

	planetObjects = {

	}
}


kashyyyk = {
	weatherEnabled = 1,
	gcwEnabled = 0,

	outpostRegionNames = { },

	planetTravelPoints = {
		{name = "Kachirho Starport", x = -669.73, z = 18.85, y = -148.48, interplanetaryTravelAllowed = 1, incomingTravelAllowed = 1},
	},

	badgeAreas = {
		
		{"exp_kash_kachirho_found",-669,-148,0,30,90},
	},

	navAreas = {
		--{"kachirho",0,0,1200},
		--{"village1",-2000,0,300},
		--{"hunting",0,-3000,2000},
		--{"dead_forest",-1500,1500,1000},
		--{"bocctyy",2300,0,600},
		--{"hracca",-1100,3500,1000},
		--{"slaver",-3300,3300,1000},
		--{"arena",-2210,1103,200},
		--{"rryatt",2194,3630,3200},
	},

	planetObjects = {
		--{templateFile = "object/tangible/terminal/terminal_character_builder.iff", ox = 0, oy = 0, oz = 0, ow = 0, x = -688, z = 18.5, y = -144, parentid = 0},
	}
}

nalhutta = {
	weatherEnabled = 1,
	gcwEnabled = 0,

	outpostRegionNames = { },

	planetTravelPoints = {
		{name = "Bilbousa", x = -3616, z = 25, y = -1932, interplanetaryTravelAllowed = 1, incomingTravelAllowed = 1},
		{name = "Hutt Trade Outpost", x = 2359.31, z = 25.04, y = 3985.28, interplanetaryTravelAllowed = 1, incomingTravelAllowed = 1},
	},

	badgeAreas = {
		{"nal_menagerie",5300,900,0,30,115},
		{"nal_carax",-3800,4555,0,30,116},
		{"nal_prison",-4000,30,0,30,117},
	},

	navAreas = {
		{"huttcity",-3518,-1949,500},
		{"bunker",2000,-3000,100},
		{"prison",-4000,0,150},
		{"bog_raiders",-1760,1360,250},
		{"gamorrean_village",-1145,-2947,200},
		{"chemical_leak",-3640,-7020,200},
		{"menagerie",5600,900,900},
		{"palace_1",3034,-5832,400},
		{"palace_2",3981,3659,250},
		{"huttsmuggleroutpost",2365,3968,350},
		{"carax_nest",-3800,4555,350},
		{"hutt_arena",-2750,-2278,250},	
		{"xnh_1",6208,7283,50},
		{"xnh_2",5004,6682,50},
		{"xnh_3",3889,6623,50},
		{"xnh_4",2699,6145,50},
		{"xnh_5",1762,6997,50},
		{"xnh_6",392,7157,75},
		{"xnh_7",886,5899,50},
		{"xnh_8",84,5936,50},
		{"xnh_9",-1262,6461,50},
		{"xnh_10",-2321,6285,50},
		{"xnh_11",-3732,6032,50},
		{"xnh_12",-4413,7374,50},
		{"xnh_13",-5207,6384,50},
		{"xnh_14",-6613,6773,50},
		{"xnh_15",-6744,5442,50},
		{"xnh_16",-6334,4305,50},
		{"xnh_17",-7140,66,50},
		{"xnh_18",-5231,3484,50},
		{"xnh_19",-4933,5174,50},
		{"xnh_20",-2264,5070,50},
		{"xnh_21",-643,5035,50},
		{"xnh_22",966,4791,50},
		{"xnh_23",2811,5525,50},
		{"xnh_24",4213,5099,50},
		{"xnh_25",5863,5634,50},
		{"xnh_26",6834,4720,50},
		{"xnh_27",6026,3806,50},
		{"xnh_28",5102,4517,50},
		{"xnh_29",3291,4469,50},
		{"xnh_30",1182,3425,50},
		{"xnh_31",-63,4042,50},
		{"xnh_32",-1171,4033,50},
		{"xnh_33",-3382,3525,50},
		{"xnh_34",-4296,2786,50},
		{"xnh_35",-5520,2445,50},
		{"xnh_36",-6828,41,50},
		{"xnh_37",-7346,1189,50},
		{"xnh_38",-6717,355,50},
		{"xnh_39",-5648,1448,50},
		{"xnh_40",-4961,586,50},
		{"xnh_41",-3771,1776,50},
		{"xnh_42",-2280,2486,50},
		{"xnh_43",-931,2905,50},
		{"xnh_44",458,2618,50},
		{"xnh_45",1866,2543,50},
		{"xnh_46",3428,2366,50},
		{"xnh_47",4910,2836,50},
		{"xnh_48",6338,67,50},
		{"xnh_49",7263,1254,50},
		{"xnh_50",4762,41,50},
		{"xnh_51",3692,1164,50},
		{"xnh_52",2196,1013,50},
		{"xnh_53",1075,1503,50},
		{"xnh_54",-170,1604,50},
		{"xnh_55",-2282,165,50},
		{"xnh_56",-850,-31,50},
		{"xnh_57",660,368,50},
		{"xnh_58",1981,24,50},
		{"xnh_59",3689,88,50},
		{"xnh_60",4959,-443,50},
		{"xnh_61",6593,-493,50},
		{"xnh_62",6430,-1963,50},
		{"xnh_63",5224,-1813,50},
		{"xnh_64",4141,-1518,50},
		{"xnh_65",2535,-1020,50},
		{"xnh_66",1312,-980,50},
		{"xnh_67",-109,-769,50},
		{"xnh_68",-1367,-1041,50},
		{"xnh_69",-3001,-691,50},
		{"xnh_70",-4276,-1020,50},
		{"xnh_71",-5734,-702,50},
		{"xnh_72",-7288,-1244,50},
		{"xnh_73",-6508,-2433,50},
		{"xnh_74",-4946,-2840,50},
		{"xnh_75",-3658,-3398,50},
		{"xnh_76",-2213,-3641,50},
		{"xnh_77",-1004,-4257,50},
		{"xnh_78",395,-3420,50},
		{"xnh_79",469,-2092,50},
		{"xnh_80",1853,-2298,50},
		{"xnh_81",3170,-2588,50},
		{"xnh_82",4660,-2699,50},
		{"xnh_83",6131,-3229,50},
		{"xnh_84",7046,-4228,50},
		{"xnh_85",5756,-4439,50},
		{"xnh_86",4390,-4321,50},
		{"xnh_87",2863,-3912,50},
		{"xnh_88",1484,-4064,50},
		{"xnh_89",799,-4722,100},
		{"xnh_90",-394,-5397,50},
		{"xnh_91",-1739,-5357,50},
		{"xnh_92",-2854,-4553,50},
		{"xnh_93",-4288,-4462,50},
		{"xnh_94",-5295,-4035,50},
		{"xnh_95",-6506,-3374,50},
		{"xnh_96",-7188,-4644,50},
		{"xnh_97",-5907,-5282,100},
		{"xnh_98",-4422,-5628,50},
		{"xnh_99",-2900,-5783,50},
		{"xnh_100",-1754,-6523,50},
		{"xnh_101",-166,-6660,50},
		{"xnh_102",1276,-6373,50},
		{"xnh_103",2018,-5142,50},
		{"xnh_104",3539,-4812,50},
		{"xnh_105",4642,-5457,50},
		{"xnh_106",6057,-5711,50},
		{"xnh_107",7020,-6710,100},
		{"xnh_108",5633,-7089,50},
		{"xnh_109",4050,-6802,50},
		{"xnh_110",2729,-7520,50},
		{"xnh_111",-5049,-6696,50},
		{"xnh_112",-6436,-6563,50},
	},

	planetObjects = {
		--{templateFile = "object/tangible/terminal/terminal_character_builder.iff", ox = 0, oy = -0.705623, oz = 0, ow = 0.708587, x = -3560, z = 25, y = -1968, parentid = 0},
	}
}

taanab = {
	weatherEnabled = 1,
	gcwEnabled = 0,

	outpostRegionNames = { },

	planetTravelPoints = {
		{name = "Pandath", x = 2100, z = 45, y = 5400, interplanetaryTravelAllowed = 1, incomingTravelAllowed = 1},

		{name = "Starhunter Station", x = 3610, z = 31.7, y = -5425, interplanetaryTravelAllowed = 1, incomingTravelAllowed = 1},
	},

	badgeAreas = {
		{"exp_tan_pan",2000,5400,0,30,92},
		{"exp_tan_downed_ship",3293,-1324,0,30,93},
		{"exp_tan_mine",-2609,-1305,0,30,94},
		{"exp_tan_hexfarms",-3002,-103,0,30,95},
		{"exp_tan_great_herd",5537,-4958,0,30,96},
		{"exp_tan_canyonlands",-2590,3705,0,30,97},
		{"exp_tan_battle",-3508,-4236,0,30,98},
	},

	navAreas = {
		{"pandath",2000,5400,300},
		{"starhunterstation",3763,-5425,300},
		{"taanabhexfarms",-3000,-105,300},
		{"taanabgreatherd",5537,-4958,300},
		{"downedship",3293,-1324,150},
		{"taanabmine",-2609,-1305,200},
		{"taanabcave",-850,7200,150},
		{"taanabnorulacvfarmer",-3508,-4236,150},
		{"x_1",2132,6674,150},
		{"x_2",103,7010,150},
		{"x_3",-1413,6150,150},
		{"x_4",-2614,5996,150},
		{"x_5",-4732,5719,150},
		{"x_6",-6000,4675,150},
		{"x_7",-6576,2785,150},
		{"x_8",-5011,2897,150},
		{"x_9",-4102,4334,150},
		{"x_10",-814,3765,150},
		{"x_11",1379,2979,150},
		{"x_12",-1481,1375,150},
		{"x_13",-4661,482,150},
		{"x_14",-5990,-1106,150},
		{"x_15",-4153,-2180,150},
		{"x_16",-5791,-3031,150},
		{"x_17",-5424,-4454,150},
		{"x_18",-2380,-2749,150},
		{"x_19",-1502,-4677,150},
		{"x_20",-353,-2666,150},
		{"x_21",-539,-906,150},
		{"x_22",1723,-894,150},
		{"x_23",734,310,150},
		{"x_24",3073,322,150},
		{"x_25",3310,2246,150},
		{"x_26",4868,1272,150},
		{"x_27",5150,-540,150},
		{"x_28",5440,-2523,150},
		{"x_29",3476,-3520,150},
		{"x_30",1114,-3378,150},
		{"x_31",2017,-4831,150},
		{"x_32",-3373,-5701,150},
		{"x_33",-5872,-6201,150},
	},

	planetObjects = {
		--{templateFile = "object/tangible/terminal/terminal_character_builder.iff", ox = 0, oy = -0.705623, oz = 0, ow = 0.708587, x = 2020, z = 45.0, y = 5400, parentid = 0},
	}
}

mustafar = {
	weatherEnabled = 1,
	gcwEnabled = 0,

	outpostRegionNames = { },


	planetTravelPoints = {
		{name = "Mensix Mining Facility", x = -2475, z = 230.1, y = 1624.7, interplanetaryTravelAllowed = 1, incomingTravelAllowed = 1},
		{name = "Mustafar Bandit Outpost", x = 5060, z = 183, y = -2366, interplanetaryTravelAllowed = 1, incomingTravelAllowed = 1},
	},

	badgeAreas = {
	
		{"exp_must_mustafar_found",-2475,1624.7,0,30,91},
	
	},

	navAreas = {

	--{"bandit_outpost",4978,-2448,350},
	--{"mensix",-2400,1700,350},
	--{"hk_army",3550,850,750},

	},

	planetObjects = {
		--{templateFile = "object/tangible/terminal/terminal_character_builder.iff", ox = 0, oy = 0, oz = 0, ow = 0, x = -2532, z = 225, y = 1650, parentid = 0},
	}
}

dagobah = {
	weatherEnabled = 1,
	gcwEnabled = 0,

	outpostRegionNames = { },

	planetTravelPoints = {
		{name = "Ship Graveyard", x = 3000, z = 3, y = 3000, interplanetaryTravelAllowed = 1, incomingTravelAllowed = 1},
		{name = "Adventurer Base Camp", x = -3029, z = 17.4, y = 547, interplanetaryTravelAllowed = 0, incomingTravelAllowed = 1},
	},

	badgeAreas = {
	},

	navAreas = {
		{"starship_graveyard",3000,3000,250},
		{"yoda_hut",0,0,50},
		{"area_1",3261,-241,250},
		{"area_2",5437,2016,250},
		{"area_3",-1319,3941,250},
		{"area_4",4494,5632,250},
		{"area_5",-1905,2560,250},
		{"camp_shuttle",-3015,553,200},
	},
	
	planetObjects = {
		--{templateFile = "object/tangible/terminal/terminal_character_builder.iff", ox = 0, oy = 0, oz = 0, ow = 0, x = 3024, z = 3, y = 2991, parentid = 0},
	}
}

coruscant = {
	weatherEnabled = 1,
	gcwEnabled = 0,

	outpostRegionNames = { },

	planetTravelPoints = {

		{name = "Senate District", x = 0, z = 300, y = -525, interplanetaryTravelAllowed = 1, incomingTravelAllowed = 1},	
	},

	badgeAreas = {
	},

	navAreas = {
		{"senate_district",0,300,500},
	
		
	},

	planetObjects = {
		--{templateFile = "object/tangible/terminal/terminal_character_builder.iff", ox = 0, oy = 0, oz = 0, ow = 0, x = 75, z = 50, --y = 175, parentid = 0},
	}
}


bespin = {
	weatherEnabled = 1,
	gcwEnabled = 0,

	outpostRegionNames = { },

	planetTravelPoints = {
		{name = "Cloud City", x = 0, z = 500, y = 0, interplanetaryTravelAllowed = 1, incomingTravelAllowed = 1},
	},

	badgeAreas = {
	},

	navAreas = {
		{"cloud_city",0,500,500},

	},

	planetObjects = {
		-- --{templateFile = "object/tangible/terminal/terminal_character_builder.iff", ox = 0, oy = 0, oz = 0, ow = 0, x = 27, z = 500, --y = 45, parentid = 0},
	}
}


--ghomrassen = {
--	weatherEnabled = 1,
--	gcwEnabled = 0,

--	outpostRegionNames = { },


--	planetTravelPoints = {
			--{name = "Ghomrassen (PvP)", x = 0, z = 5, y = 0, interplanetaryTravelAllowed = 1, incomingTravelAllowed = 1},
--	},

	--badgeAreas = {
--	},

	--navAreas = {
	--},

	--planetObjects = {

	--}
--}


kuat = {
	weatherEnabled = 1,
	gcwEnabled = 1,

	outpostRegionNames = { },


	planetTravelPoints = {
			{name = "Kuat City", x = 2172, z = 35, y = -3121, interplanetaryTravelAllowed = 1, incomingTravelAllowed = 1},
			{name = "Kuat Drive Yards", x = 5580, z = 2, y = 5960, interplanetaryTravelAllowed = 0, incomingTravelAllowed = 1},
			{name = "Andrim City", x = -6602.8, z = 13.5, y = 140, interplanetaryTravelAllowed = 0, incomingTravelAllowed = 1},
	},

	badgeAreas = {
		{"kuat_gardens",522,-4612,0,30,103},
		{"kuat_drive_yards",4725,5926,0,30,104},
		{"kuat_reclamation",-4037,5517,0,30,105},
		{"kuat_failed_op",-5200,-6230,0,30,106},
		{"kuat_docks",5600,-2325,0,30,107},
		{"kuat_waterfall",-6204,6551,0,30,108},
	},

	navAreas = {
		{"kuat_city",2500,-3000,500},
		{"kuat_gardens",477,-4978,600},
		{"kuat_rec_zone",-3949,5604,350},
		{"kuat_drive_yards",4725,5926,1000},
		{"kuat_fishing_docks",5600,-2325,350},
		{"kuat_failed_op",-5200,-6230,350},
		{"andrim_city",-6975,160,750},	
		{"kuat_poacher_vs_creature",177,2326,150},
		{"kuat_poacher_cave",-2572,2956,150},
		{"xk_1",4686,646,50},
		{"xk_2",1966,-4804,50},
		{"xk_3",-3803,1887,50},
		{"xk_4",-191,-1797,50},
		{"xk_5",-6771,-4566,50},
		{"xk_6",-5213,6704,50},
		{"xk_7",-2774,-3533,50},
		{"xk_8",-1470,-4632,50},
		{"xk_9",4516,-636,50},
		{"xk_10",2082,-6725,50},
		{"xk_11",1607,-2286,50},
		{"xk_12",2907,-573,50},
		{"xk_13",-1059,4721,50},
		{"xk_14",-2119,5696,50},
		{"xk_15",-2727,955,50},
		{"xk_16",104,469,50},
		{"xk_17",373,7247,50},
		{"xk_18",7232,7112,50},
		{"xk_19",6634,2277,50},
		{"xk_20",7433,-900,50},
		{"xk_21",7083,-3028,50},
		{"xk_22",-1230,1481,50},
		{"xk_23",-5317,-3373,50},
		{"xk_24",-4188,-4737,50},
		{"xk_25",171,-6487,50},
		{"xk_26",-1420,-694,50},
		{"xk_27",-5101,-1856,50},
		{"xk_28",-2075,6827,50},
		{"xk_29",2985,1358,50},
		{"xk_30",-6708,1772,50},
		{"xk_31",-7345,4475,50},
		{"xk_32",-3312,7041,50},
		{"xk_33",1141,6121,50},
		{"xk_34",-5241,4044,50},
		{"xk_35",7089,4172,50},
		{"xk_36",-6510,5443,50},
		{"xk_37",1221,4495,50},
		{"xk_38",6942,739,50},
		{"xk_39",-7073,7115,50},
		{"xk_40",-5301,1244,50},
		{"xk_41",-3505,-6439,50},
		{"xk_42",-1641,-7201,50},
		{"xk_43",-100,-3191,50},
		{"xk_44",-3613,4472,50},
		{"xk_45",5914,-726,50},
		{"xk_46",-7224,-1549,50},
		{"xk_47",-5182,-247,50},
		{"xk_48",3085,7027,50},
		{"xk_49",-2998,-1676,50},
		{"xk_50",1636,1378,50},
		{"xk_51",-4932,5585,50},
		
	},

	planetObjects = {

	}
}


moncal = {
	weatherEnabled = 1,
	gcwEnabled = 0,

	outpostRegionNames = { },


	planetTravelPoints = {
			{name = "Mon Calamari City", x = 196, z = 25, y = -107, interplanetaryTravelAllowed = 1, incomingTravelAllowed = 1},
			{name = "Dac City", x = 1924.00, z = 10.6, y = -3626.00, interplanetaryTravelAllowed = 1, incomingTravelAllowed = 1},
			{name = "Geyser Island", x = -2.75, z = 19, y = -4443.13, interplanetaryTravelAllowed = 0, incomingTravelAllowed = 1},
	},
	
	badgeAreas = {
		{"moncal_geyser_island",44,-4389,0,30,118},
	},

	navAreas = {
		{"moncal_city",200,-100,500},
		{"dac_city",2300,-3450,500},
		{"geyser_island",-30,-4511,500},
		{"forbidden_maw",2323,2929,500},
		{"goroga_cave",3432,-6486,500},
	},

	planetObjects = {

	}
}


ordmantell = {
	weatherEnabled = 1,
	gcwEnabled = 0,

	outpostRegionNames = { },


	planetTravelPoints = {
			{name = "Worlport A", x = -215, z = 85, y = -3538, interplanetaryTravelAllowed = 1, incomingTravelAllowed = 1},
			{name = "Worlport B", x = -542, z = 100, y = -3162, interplanetaryTravelAllowed = 1, incomingTravelAllowed = 1},
			{name = "Smuggler Outpost", x = 3929, z = 230, y = 3660, interplanetaryTravelAllowed = 1, incomingTravelAllowed = 1},
	},

	badgeAreas = {
		{"ord_junkyard",-3000,-1000,0,30,109},
		{"ord_forgotten",-2250,2590,0,30,110},
		{"ord_smugglerspeak",2684,5808,0,30,111},
		{"ord_disinous_city",855,1552,0,30,112},
		{"ord_grogilla_canyon",6422,3005,0,30,113},
		{"ord_twin_waterfalls",-211,7062,7902508,30,114},
	},

	navAreas = {
		{"junkyard",-3000,-1000,500},
		{"worlport",-340,-3500,500},
		{"ordmantell_smugglers_outpost",3900,3700,150},
		{"treilans_lab",6000,6700,250},
		{"destroyed_city",-2230,2637,300},
		{"sayormi_stronghold",-4450,480,200},
		{"grogilla_canyon",6422,3005,500},
		{"disinous_city",855,1552,400},
		{"smugglers_peak",2833,5797,200},
		{"strider_base",-1420,-6709,300},
		{"nexu_cave",-24,7179,50},		
		{"xom_1",1445,4596,50},
		{"xom_2",-4851,6638,50},
		{"xom_3",-4454,7418,50},
		{"xom_4",-3751,4926,50},
		{"xom_5",1628,3629,50},
		{"xom_6",-3319,-2092,50},
		{"xom_7",2929,3308,50},
		{"xom_8",-6649,-649,50},
		--{"xom_9",-2749,635,50},
		{"xom_10",1999,5672,50},
		{"xom_11",5000,2717,50},
		{"xom_12",-4623,-1490,50},
		{"xom_13",6279,-7152,50},
		{"xom_14",-5922,2366,50},
		{"xom_15",6928,6127,50},
		{"xom_16",-5195,-492,50},
		{"xom_17",6931,4766,50},
		{"xom_18",5552,3516,50},
		{"xom_19",6662,1990,50},
		{"xom_20",2431,7680,50},
		{"xom_21",-1423,5166,50},
		{"xom_22",-1791,6011,50},
		{"xom_23",276,2892,50},
		{"xom_24",-718,2614,50},
		{"xom_25",5290,4287,50},
		{"xom_26",2683,3984,50},
		{"xom_27",1203,5378,50},
		{"xom_28",-2062,4280,50},
		{"xom_29",-2693,5494,50},
		{"xom_30",-2919,6825,50},
		{"xom_31",-4439,5800,50},
		{"xom_32",-3487,2862,50},
		{"xom_33",-3886,3827,50},
		{"xom_34",-6962,1867,50},
		{"xom_35",-6884,708,50},
		{"xom_36",-5496,685,50},
		{"xom_37",-4553,1848,50},
		{"xom_38",-3139,1561,50},
		{"xom_39",-1429,1564,50},
		{"xom_40",1054,675,50},
		{"xom_41",-599,-463,50},
		{"xom_42",-1384,-1082,50},
		{"xom_43",-426,-1985,50},
		{"xom_44",2339,-2622,50},
		{"xom_45",2816,-7032,50},
		{"xom_46",3608,-5829,50},
		{"xom_47",5117,-6227,50},
		{"xom_48",4140,-6944,50},
		{"xom_49",-1514,6660,50},
		{"xom_50",393,4179,50},
		{"xom_51",2625,4796,50},
		{"xom_52",-3723,6582,50},
		{"xom_53",1378,-7564,50},
		{"xom_54",954,6109,50},
		{"xom_55",7481,3720,50},
		{"xom_56",-3008,3955,50},
		{"xom_57",-285,1360,50},
		{"xom_58",-1718,-1679,50},
		{"xom_59",-5193,3260,50},
		{"xom_60",-5358,5173,50},
		{"xom_61",-473,6383,50},
		{"xom_62",-2540,-7078,50},
		{"xom_63",2412,1629,50},
		{"xom_64",3546,2577,50},
		{"xom_65",1037,-2988,50},
		{"xom_66",-592,4350,50},
		{"xom_67",-103,5281,50},
		{"xom_68",3953,5142,50},
		{"xom_69",1961,2492,50},
		{"xom_70",5624,5051,50},
		{"xom_71",4636,6053,50},
		{"xom_72",4781,5463,50},
		{"xom_73",6158,4179,50},
		{"xom_74",3760,6710,50},
		{"xom_75",-1374,259,50},
		
	},

	planetObjects = {
		--{templateFile = "object/tangible/terminal/terminal_character_builder.iff", ox = 0, oy = 0, oz = 0, ow = 0, x = -271, z = -3553, y = 85, parentid = 0},
	}
}



kessel = {
	weatherEnabled = 1,
	gcwEnabled = 0,

	outpostRegionNames = { },


	planetTravelPoints = {
			{name = "Kessel City", x = -750, z = 96.5, y = 350, interplanetaryTravelAllowed = 1, incomingTravelAllowed = 1},
	},

	badgeAreas = {
	},

	navAreas = {
	},

	planetObjects = {

	}
}

dungeon4 = {
	weatherEnabled = 1,
	gcwEnabled = 0,

	outpostRegionNames = { },

	planetTravelPoints = {
	},

	badgeAreas = {
	},

	navAreas = {
	},

	planetObjects = {

	}
}



space_corellia = {
	weatherEnabled = 0,
	gcwEnabled = 0,

	planetObjects = {
		--{templateFile = "object/static/space/spacestation/rebel_outpost_01.iff", x = -7132.79, z = 2340.4, y = 2013.98, ow = 0.641545, ox = -0.0633626, oy = 0.76035, oz = 0.079203, parentid = 0},
		--{templateFile = "object/static/space/spacestation/corsec_outpost_01.iff", x = -6345.5, z = -5274.5, y = -3957.25, ow = 0.640802, ox = 0.015822, oy = 0.76738, oz = -0.0158223, parentid = 0},
		--{templateFile = "object/static/space/spacestation/rebel_outpost_01.iff", x = -1463.42, z = 318.86, y = -1012.24, ow = 0.759136, ox = -0.0474463, oy = 0.648429, oz = 0.0316307, parentid = 0},
		--{templateFile = "object/static/space/spacestation/corsec_outpost_01.iff", x = 6519.75, z = -5373.75, y = -2600.25, ow = -0.428073, ox = -1.39125e-08, oy = 0.90371, oz = -0.00792732, parentid = 0}
	}
}

space_sralpha = {

	weatherEnabled = 0,
	gcwEnabled = 0,

	planetObjects = {
		--{templateFile = "object/static/space/spacestation/imperial_spacestation_01.iff", x = -2629.72, z = 3585.8, y = 3269.39, ow = 0.103184, ox = 0.031749, oy = 0.936596, oz = -0.333365, parentid = 0},
		--{templateFile = "object/static/space/spacestation/imperial_spacestation_01.iff", x = 178.72, z = -4785.06, y = -6403.03, ow = 0.977105, ox = 0, oy = 0.212757, oz = 0, parentid = 0},
		--{templateFile = "object/static/space/spacestation/corsec_outpost_01.iff", x = 1358.93, z = -741.97, y = -5901.79, ow = 0.907314, ox = 0.110455, oy = 0.394484, oz = -0.0946762, parentid = 0},
		--{templateFile = "object/static/space/spacestation/rebel_outpost_01.iff", x = -4200, z = -3000, y = -6000, ow = 1, ox = 0, oy = 0, oz = 0, parentid = 0},
		--{templateFile = "object/static/space/spacestation/rebel_outpost_01.iff", x = 5522.87, z = 3202, y = 5997.74, ow = -0.236536, ox = -0.031538, oy = 0.954028, oz = -0.181344, parentid = 0},
		--{templateFile = "object/static/space/spacestation/rebel_outpost_01.iff", x = -3979.37, z = 5423.26, y = -4565.81, ow = 0.917577, ox = 0.0791015, oy = 0.387597, oz = -0.0395508, parentid = 0}
	}
}

dungeon5 = {
	weatherEnabled = 0,
	gcwEnabled = 0,

	outpostRegionNames = { },

	planetTravelPoints = {
		{name = "Centerpoint Station", x = 6020, z = 0, y = -159, interplanetaryTravelAllowed = 1, incomingTravelAllowed = 0},
	},

	badgeAreas = {
	},

	navAreas = {
		--{"centerpoint_station",-6000,0,500},
	},

	planetObjects = {
		--{templateFile = "object/static/space/ship/nebulon_frigate.iff", x = 600, z = 25, y = 500, ow = 0, ox = 0, oy = 0, oz = 0, parentid = 0},
	}

}

space_dantooine = {
	weatherEnabled = 0,
	gcwEnabled = 0,

	planetObjects = {
		--{templateFile = "object/static/space/spacestation/imperial_spacestation_01.iff", x = -2629.72, z = 3585.8, y = 3269.39, ow = 0.103184, ox = 0.031749, oy = 0.936596, oz = -0.333365, parentid = 0},
		--{templateFile = "object/static/space/spacestation/imperial_spacestation_01.iff", x = 178.72, z = -4785.06, y = -6403.03, ow = 0.977105, ox = 0, oy = 0.212757, oz = 0, parentid = 0},
		--{templateFile = "object/static/space/spacestation/corsec_outpost_01.iff", x = 1358.93, z = -741.97, y = -5901.79, ow = 0.907314, ox = 0.110455, oy = 0.394484, oz = -0.0946762, parentid = 0},
		--{templateFile = "object/static/space/spacestation/rebel_outpost_01.iff", x = -4200, z = -3000, y = -6000, ow = 1, ox = 0, oy = 0, oz = 0, parentid = 0},
		--{templateFile = "object/static/space/spacestation/rebel_outpost_01.iff", x = 5522.87, z = 3202, y = 5997.74, ow = -0.236536, ox = -0.031538, oy = 0.954028, oz = -0.181344, parentid = 0},
		--{templateFile = "object/static/space/spacestation/rebel_outpost_01.iff", x = -3979.37, z = 5423.26, y = -4565.81, ow = 0.917577, ox = 0.0791015, oy = 0.387597, oz = -0.0395508, parentid = 0}
	}
}

space_dathomir = {
	weatherEnabled = 0,
	gcwEnabled = 0,

	planetObjects = {
		--{templateFile = "object/static/space/spacestation/imperial_spacestation_01.iff", x = 4842.19, z = -5316.32, y = -4222.79, ow = 0.849126, ox = -0.277752, oy = -0.428531, oz = -0.134908, parentid = 0},
	--	{templateFile = "object/static/space/spacestation/imperial_spacestation_01.iff", x = 6092.23, z = 6223.58, y = -6731.9, ow = 0.967128, ox = 0.182327, oy = -0.1744, oz = 0.0317089, parentid = 0},
		--{templateFile = "object/static/space/spacestation/corsec_outpost_01.iff", x = 4000, z = 200, y = -4700, ow = 1, ox = 0, oy = 0, oz = 0, parentid = 0},
		--{templateFile = "object/static/space/spacestation/corsec_outpost_01.iff", x = -7078.75, z = 2879, y = -4293.75, ow = 0.946438, ox = 0.173514, oy = 0.268158, oz = -0.0473218, parentid = 0}
	}
}

space_endor = {
	weatherEnabled = 0,
	gcwEnabled = 0,

	planetObjects = {
		--{templateFile = "object/static/space/spacestation/imperial_spacestation_01.iff", x = 5773.37, z = -6359.57, y = 6976.04, ow = 0.197218, ox = -0.0157777, oy = 0.978199, oz = 0.0631097, parentid = 0},
		--{templateFile = "object/static/space/spacestation/imperial_spacestation_01.iff", x = 6200, z = 5000, y = 6000, ow = 1, ox = 0, oy = 0, oz = 0, parentid = 0},
		--{templateFile = "object/static/space/spacestation/imperial_spacestation_01.iff", x = -5716.48, z = 7198.22, y = 2009.09, ow = 0.781614, ox = 0.307908, oy = 0.505286, oz = -0.197377, parentid = 0},
		--{templateFile = "object/static/space/spacestation/corsec_outpost_01.iff", x = -5268.23, z = -1500.23, y = 5209.39, ow = 0.919533, ox = 0.151784, oy = -0.359617, oz = 0.0457911, parentid = 0}
	}
}

space_lok = {
	weatherEnabled = 0,
	gcwEnabled = 0,

	planetObjects = {
		--{templateFile = "object/static/space/spacestation/imperial_spacestation_01.iff", x = -1798.64, z = 2649.25, y = 400.89, ow = -0.031722, ox = 0.0158608, oy = 0.999245, oz = 0.0158608, parentid = 0},
		--{templateFile = "object/static/space/spacestation/corsec_outpost_01.iff", x = -6235.21, z = -5341.59, y = 113.86, ow = 0.611794, ox = 0.347264, oy = 0.577203, oz = -0.414672, parentid = 0},
		--{templateFile = "object/static/space/spacestation/rebel_outpost_01.iff", x = 1799.13, z = -2458.57, y = -3680.29, ow = 0.989635, ox = -0.13459, oy = 0.0475025, oz = 0.0158343, parentid = 0}
	}
}

space_heavy1 = {
	weatherEnabled = 0,
	gcwEnabled = 0,

	planetObjects = {
		--{templateFile = "object/static/space/spacestation/imperial_spacestation_01.iff", x = -1798.64, z = 2649.25, y = 400.89, ow = -0.031722, ox = 0.0158608, oy = 0.999245, oz = 0.0158608, parentid = 0},
		--{templateFile = "object/static/space/spacestation/corsec_outpost_01.iff", x = -6235.21, z = -5341.59, y = 113.86, ow = 0.611794, ox = 0.347264, oy = 0.577203, oz = -0.414672, parentid = 0},
		--{templateFile = "object/static/space/spacestation/rebel_outpost_01.iff", x = 1799.13, z = -2458.57, y = -3680.29, ow = 0.989635, ox = -0.13459, oy = 0.0475025, oz = 0.0158343, parentid = 0}
	}
}

space_light1 = {
	weatherEnabled = 0,
	gcwEnabled = 0,

	planetObjects = {
		--{templateFile = "object/static/space/spacestation/imperial_spacestation_01.iff", x = -1798.64, z = 2649.25, y = 400.89, ow = -0.031722, ox = 0.0158608, oy = 0.999245, oz = 0.0158608, parentid = 0},
		--{templateFile = "object/static/space/spacestation/corsec_outpost_01.iff", x = -6235.21, z = -5341.59, y = 113.86, ow = 0.611794, ox = 0.347264, oy = 0.577203, oz = -0.414672, parentid = 0},
		--{templateFile = "object/static/space/spacestation/rebel_outpost_01.iff", x = 1799.13, z = -2458.57, y = -3680.29, ow = 0.989635, ox = -0.13459, oy = 0.0475025, oz = 0.0158343, parentid = 0}
	}
}

space_naboo = {
	weatherEnabled = 0,
	gcwEnabled = 0,

	planetObjects = {
		--{templateFile = "object/static/space/spacestation/imperial_spacestation_01.iff", x = 3511.83, z = 1774.71, y = 944.36, ow = -0.670707, ox = 0, oy = 0.741723, oz = 0, parentid = 0},
		--{templateFile = "object/static/space/spacestation/corsec_outpost_01.iff", x = -2491.26, z = 905.49, y = -6460.67, ow = 0.201287, ox = -0.00687047, oy = 0.968212, oz = 0.148333, parentid = 0},
		--{templateFile = "object/static/space/spacestation/corsec_outpost_01.iff", x = 6226.22, z = -4450.57, y = 484.75, ow = 0.36384, ox = -0.0206368, oy = 0.924935, oz = 0.108118, parentid = 0}
	}
}

space_tatooine = {
	weatherEnabled = 0,
	gcwEnabled = 0,

	planetObjects = {
		--{templateFile = "object/static/space/spacestation/corsec_outpost_01.iff", x = 2311.89, z = -5872.72, y = 1865.29, ow = 0.324318, ox = 0.0734025, oy = 0.94172, oz = -0.0509326, parentid = 0}
	}
}

space_yavin4 = {
	weatherEnabled = 0,
	gcwEnabled = 0,

	planetObjects = {
		--{templateFile = "object/static/space/spacestation/imperial_spacestation_01.iff", x = -6798.55, z = 4998.69, y = 4760.4, ow = 0.577296, ox = 0.0316324, oy = 0.814541, oz = -0.0474491, parentid = 0},
		--{templateFile = "object/static/space/spacestation/imperial_spacestation_01.iff", x = -4190.56, z = 1539.35, y = 4596.82, ow = 0.434352, ox = 0.023692, oy = 0.900293, oz = -0.0157947, parentid = 0},
		--{templateFile = "object/static/space/spacestation/imperial_spacestation_01.iff", x = 85.21, z = -342.3, y = -57.62, ow = 0.627024, ox = 0.0158741, oy = 0.777827, oz = -0.039685, parentid = 0},
		--{templateFile = "object/static/space/spacestation/corsec_outpost_01.iff", x = -5570.46, z = -5168, y = -5234.88, ow = 0.994108, ox = 0.105996, oy = -0.0145207, oz = -0.0173906, parentid = 0}
	}
}

space_kashyyyk = {
	weatherEnabled = 0,
	gcwEnabled = 0,

	planetObjects = {
		--{templateFile = "object/static/space/spacestation/corsec_outpost_01.iff", x = -5000, z = 251, y = -5000, ow = 0.324318, ox = 0.0734025, oy = 0.94172, oz = -0.0509326, parentid = 0}
		--{templateFile = "avatar", x = 2830, z = 530, y = -2590, ow = 0.324318, ox = 0.0734025, oy = 0.94172, oz = -0.0509326, parentid = 0}
	}
}

space_mustafar = {
	weatherEnabled = 0,
	gcwEnabled = 0,

	planetObjects = {
		--{templateFile = "object/static/space/spacestation/imperial_spacestation_01.iff", x = -1798.64, z = 2649.25, y = 400.89, ow = -0.031722, ox = 0.0158608, oy = 0.999245, oz = 0.0158608, parentid = 0},
		--{templateFile = "object/static/space/spacestation/corsec_outpost_01.iff", x = -6235.21, z = -5341.59, y = 113.86, ow = 0.611794, ox = 0.347264, oy = 0.577203, oz = -0.414672, parentid = 0},
		--{templateFile = "object/static/space/spacestation/rebel_outpost_01.iff", x = 1799.13, z = -2458.57, y = -3680.29, ow = 0.989635, ox = -0.13459, oy = 0.0475025, oz = 0.0158343, parentid = 0}
	}
}

space_dagobah = {
	weatherEnabled = 0,
	gcwEnabled = 0,

	planetObjects = {
		--{templateFile = "object/static/space/spacestation/imperial_spacestation_01.iff", x = -1798.64, z = 2649.25, y = 400.89, ow = -0.031722, ox = 0.0158608, oy = 0.999245, oz = 0.0158608, parentid = 0},
		--{templateFile = "object/static/space/spacestation/corsec_outpost_01.iff", x = -6235.21, z = -5341.59, y = 113.86, ow = 0.611794, ox = 0.347264, oy = 0.577203, oz = -0.414672, parentid = 0},
		--{templateFile = "object/static/space/spacestation/rebel_outpost_01.iff", x = 1799.13, z = -2458.57, y = -3680.29, ow = 0.989635, ox = -0.13459, oy = 0.0475025, oz = 0.0158343, parentid = 0}
	}
}

space_bespin = {
	weatherEnabled = 0,
	gcwEnabled = 0,

	planetObjects = {
		--{templateFile = "object/static/space/spacestation/imperial_spacestation_01.iff", x = -1798.64, z = 2649.25, y = 400.89, ow = -0.031722, ox = 0.0158608, oy = 0.999245, oz = 0.0158608, parentid = 0},
		--{templateFile = "object/static/space/spacestation/corsec_outpost_01.iff", x = -6235.21, z = -5341.59, y = 113.86, ow = 0.611794, ox = 0.347264, oy = 0.577203, oz = -0.414672, parentid = 0},
		--{templateFile = "object/static/space/spacestation/rebel_outpost_01.iff", x = 1799.13, z = -2458.57, y = -3680.29, ow = 0.989635, ox = -0.13459, oy = 0.0475025, oz = 0.0158343, parentid = 0}
	}
}

space_hoth = {
	weatherEnabled = 0,
	gcwEnabled = 0,

	planetObjects = {
		--{templateFile = "object/static/space/spacestation/imperial_spacestation_01.iff", x = -1798.64, z = 2649.25, y = 400.89, ow = -0.031722, ox = 0.0158608, oy = 0.999245, oz = 0.0158608, parentid = 0},
		--{templateFile = "object/static/space/spacestation/corsec_outpost_01.iff", x = -6235.21, z = -5341.59, y = 113.86, ow = 0.611794, ox = 0.347264, oy = 0.577203, oz = -0.414672, parentid = 0},
		--{templateFile = "object/static/space/spacestation/rebel_outpost_01.iff", x = 1799.13, z = -2458.57, y = -3680.29, ow = 0.989635, ox = -0.13459, oy = 0.0475025, oz = 0.0158343, parentid = 0}
	}
}

space_coruscant = {
	weatherEnabled = 0,
	gcwEnabled = 0,

	planetObjects = {
		--{templateFile = "object/static/space/spacestation/imperial_spacestation_01.iff", x = -1798.64, z = 2649.25, y = 400.89, ow = -0.031722, ox = 0.0158608, oy = 0.999245, oz = 0.0158608, parentid = 0},
		--{templateFile = "object/static/space/spacestation/corsec_outpost_01.iff", x = -6235.21, z = -5341.59, y = 113.86, ow = 0.611794, ox = 0.347264, oy = 0.577203, oz = -0.414672, parentid = 0},
		--{templateFile = "object/static/space/spacestation/rebel_outpost_01.iff", x = 1799.13, z = -2458.57, y = -3680.29, ow = 0.989635, ox = -0.13459, oy = 0.0475025, oz = 0.0158343, parentid = 0}
	}
}

space_kuat = {
	weatherEnabled = 0,
	gcwEnabled = 0,

	planetObjects = {
		--{templateFile = "object/static/space/spacestation/imperial_spacestation_01.iff", x = -1798.64, z = 2649.25, y = 400.89, ow = -0.031722, ox = 0.0158608, oy = 0.999245, oz = 0.0158608, parentid = 0},
		--{templateFile = "object/static/space/spacestation/corsec_outpost_01.iff", x = -6235.21, z = -5341.59, y = 113.86, ow = 0.611794, ox = 0.347264, oy = 0.577203, oz = -0.414672, parentid = 0},
		--{templateFile = "object/static/space/spacestation/rebel_outpost_01.iff", x = 1799.13, z = -2458.57, y = -3680.29, ow = 0.989635, ox = -0.13459, oy = 0.0475025, oz = 0.0158343, parentid = 0}
	}
}

space_taanab = {
	weatherEnabled = 0,
	gcwEnabled = 0,

	planetObjects = {
		--{templateFile = "object/static/space/spacestation/imperial_spacestation_01.iff", x = -1798.64, z = 2649.25, y = 400.89, ow = -0.031722, ox = 0.0158608, oy = 0.999245, oz = 0.0158608, parentid = 0},
		--{templateFile = "object/static/space/spacestation/corsec_outpost_01.iff", x = -6235.21, z = -5341.59, y = 113.86, ow = 0.611794, ox = 0.347264, oy = 0.577203, oz = -0.414672, parentid = 0},
		--{templateFile = "object/static/space/spacestation/rebel_outpost_01.iff", x = 1799.13, z = -2458.57, y = -3680.29, ow = 0.989635, ox = -0.13459, oy = 0.0475025, oz = 0.0158343, parentid = 0}
	}
}

space_ord = {
	weatherEnabled = 0,
	gcwEnabled = 0,

	planetObjects = {
		--{templateFile = "object/static/space/spacestation/imperial_spacestation_01.iff", x = -1798.64, z = 2649.25, y = 400.89, ow = -0.031722, ox = 0.0158608, oy = 0.999245, oz = 0.0158608, parentid = 0},
		--{templateFile = "object/static/space/spacestation/corsec_outpost_01.iff", x = -6235.21, z = -5341.59, y = 113.86, ow = 0.611794, ox = 0.347264, oy = 0.577203, oz = -0.414672, parentid = 0},
		--{templateFile = "object/static/space/spacestation/rebel_outpost_01.iff", x = 1799.13, z = -2458.57, y = -3680.29, ow = 0.989635, ox = -0.13459, oy = 0.0475025, oz = 0.0158343, parentid = 0}
	}
}

space_moncal = {
	weatherEnabled = 0,
	gcwEnabled = 0,

	planetObjects = {
		--{templateFile = "object/static/space/spacestation/imperial_spacestation_01.iff", x = -1798.64, z = 2649.25, y = 400.89, ow = -0.031722, ox = 0.0158608, oy = 0.999245, oz = 0.0158608, parentid = 0},
		--{templateFile = "object/static/space/spacestation/corsec_outpost_01.iff", x = -6235.21, z = -5341.59, y = 113.86, ow = 0.611794, ox = 0.347264, oy = 0.577203, oz = -0.414672, parentid = 0},
		--{templateFile = "object/static/space/spacestation/rebel_outpost_01.iff", x = 1799.13, z = -2458.57, y = -3680.29, ow = 0.989635, ox = -0.13459, oy = 0.0475025, oz = 0.0158343, parentid = 0}
	}
}

space_nalhutta = {
	weatherEnabled = 0,
	gcwEnabled = 0,

	planetObjects = {
		--{templateFile = "object/static/space/spacestation/imperial_spacestation_01.iff", x = -1798.64, z = 2649.25, y = 400.89, ow = -0.031722, ox = 0.0158608, oy = 0.999245, oz = 0.0158608, parentid = 0},
		--{templateFile = "object/static/space/spacestation/corsec_outpost_01.iff", x = -6235.21, z = -5341.59, y = 113.86, ow = 0.611794, ox = 0.347264, oy = 0.577203, oz = -0.414672, parentid = 0},
		--{templateFile = "object/static/space/spacestation/rebel_outpost_01.iff", x = 1799.13, z = -2458.57, y = -3680.29, ow = 0.989635, ox = -0.13459, oy = 0.0475025, oz = 0.0158343, parentid = 0}
	}
}

mandalore = {
	weatherEnabled = 1,
	gcwEnabled = 0,

	outpostRegionNames = { },


	planetTravelPoints = {
			--{name = "Ghomrassen (PvP)", x = 0, z = 5, y = 0, interplanetaryTravelAllowed = 1, incomingTravelAllowed = 1},
	},

	badgeAreas = {
	},

	navAreas = {
	},

	planetObjects = {

	}
}
