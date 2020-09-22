
baritha_missions =
{
	{
		missionType = "escort",
		primarySpawns =
		{
			{ npcTemplate = "theme_park_imperial_sergeant", npcName = "" }
		},
		secondarySpawns =
		{
			{ npcTemplate = "prison_guard", npcName = "Prison Guard" },
			{ npcTemplate = "prison_guard", npcName = "Prison Guard" },
			{ npcTemplate = "prison_guard", npcName = "Prison Guard" }
		},
		itemSpawns =
		{

		},
		rewards =
		{
			{ rewardType = "faction", faction = "nightsister", amount = 100 },
			{ rewardType = "credits", amount = 15000 },
			{ rewardType = "loot",  lootGroup = "ns_potted_plant_group_01" }
		}
	},
	{
		missionType = "escort",
		primarySpawns =
		{
			{ npcTemplate = "theme_park_nightsister_outcast", npcName = "a Reformed Nightsister" }
		},
		secondarySpawns =
		{
			{ npcTemplate = "singing_mountain_clan_guardian", npcName = "" },
			{ npcTemplate = "singing_mountain_clan_guardian", npcName = "" }
		},
		itemSpawns =
		{

		},
		rewards =
		{
			{ rewardType = "faction", faction = "nightsister", amount = 125 },
			{ rewardType = "credits", amount = 17500 }
		}
	},
	{
		missionType = "escort",
		primarySpawns =
		{
			{ npcTemplate = "theme_park_imperial_staff_corporal", npcName = "" }
		},
		secondarySpawns =
		{
			{ npcTemplate = "singing_mountain_clan_arch_witch", npcName = "" },
			{ npcTemplate = "singing_mountain_clan_arch_witch", npcName = "" },
			{ npcTemplate = "singing_mountain_clan_guardian", npcName = "" }				
		},
		itemSpawns =
		{

		},
		rewards =
		{
			{ rewardType = "faction", faction = "nightsister", amount = 150 },
			{ rewardType = "credits", amount = 20000 },
			{ rewardType = "loot",  lootGroup = "ns_potted_plant_group_02" }
		}
	}
}

fath_hray_missions =
{
	{
		missionType = "escort",
		primarySpawns =
		{
			{ npcTemplate = "theme_park_nightsister_rancor", npcName = "an Escaped Rancor" }
		},
		secondarySpawns =
		{
			{ npcTemplate = "singing_mountain_clan_arch_witch", npcName = "" },
			{ npcTemplate = "singing_mountain_clan_guardian", npcName = "" }
		},
		itemSpawns =
		{

		},
		rewards =
		{
			{ rewardType = "faction", faction = "nightsister", amount = 175 },
			{ rewardType = "credits", amount = 20000 },			
		}
	},
	{
		missionType = "assassinate",
		primarySpawns =
		{
			{ npcTemplate = "singing_mountain_clan_guardian", npcName = "" }
		},
		secondarySpawns =
		{
			{ npcTemplate = "singing_mountain_clan_dragoon", npcName = "" },
			{ npcTemplate = "singing_mountain_clan_arch_witch", npcName = "" },
			{ npcTemplate = "singing_mountain_clan_arch_witch", npcName = "" }
		},
		itemSpawns =
		{

		},
		rewards =
		{
			{ rewardType = "faction", faction = "nightsister", amount = 200 },
			{ rewardType = "credits", amount = 22500 },
			{ rewardType = "loot",  lootGroup = "ns_potted_tree_small_group" }	
		}
	}
}

diax_missions =
{
	{
		missionType = "assassinate",
		primarySpawns =
		{
			{ npcTemplate = "nightsister_initiate", npcName = "Daverda" }
		},
		secondarySpawns =
		{
			{ npcTemplate = "nightsister_spell_weaver", npcName = "" },
			{ npcTemplate = "nightsister_sentinel", npcName = "" }
		},
		itemSpawns =
		{

		},
		rewards =
		{
			{ rewardType = "faction", faction = "nightsister", amount = 225 },
			{ rewardType = "credits", amount = 22500 },
			{ rewardType = "loot",  lootGroup = "ns_potted_tree_medium_group" }
		}
	},
	{
		missionType = "confiscate",
		primarySpawns =
		{
			{ npcTemplate = "singing_mountain_clan_huntress_quest", npcName = "" }
		},
		secondarySpawns =
		{
			{ npcTemplate = "singing_mountain_clan_arch_witch", npcName = "" },
			{ npcTemplate = "singing_mountain_clan_guardian", npcName = "" }
		},
		itemSpawns =
		{
			{ itemTemplate = "object/tangible/mission/quest_item/diax_q2_needed.iff", itemName = "" }
		},
		rewards =
		{
			{ rewardType = "faction", faction = "nightsister", amount = 250 },
			{ rewardType = "credits", amount = 25000 },
			{ rewardType = "loot",  lootGroup = "ns_potted_tree_large_group" }
		}
	}
}

kais_missions =
{
	{
		missionType = "confiscate",
		primarySpawns =
		{
			{ npcTemplate = "gaping_spider_queen_quest", npcName = "" }
		},
		secondarySpawns =
		{

		},
		itemSpawns =
		{
			{ itemTemplate = "object/tangible/mission/quest_item/kais_q1_needed.iff", itemName = "" }
		},
		rewards =
		{
			{ rewardType = "faction", faction = "nightsister", amount = 275 },
			{ rewardType = "credits", amount = 25000 }
		}
	},
	{
		missionType = "confiscate",
		primarySpawns =
		{
			{ npcTemplate = "malkloc_quest", npcName = "" }
		},
		secondarySpawns =
		{

		},
		itemSpawns =
		{
			{ itemTemplate = "object/tangible/mission/quest_item/kais_q2_needed.iff", itemName = "" }
		},
		rewards =
		{
			{ rewardType = "faction", faction = "nightsister", amount = 300 },
			{ rewardType = "credits", amount = 27500 }
		}
	},
	{
		missionType = "deliver",
		primarySpawns =
		{
			{ npcTemplate = "theme_park_imperial_stealth_operative", npcName = "a Coerced Guard" }
		},
		secondarySpawns =
		{

		},
		itemSpawns =
		{
			{ itemTemplate = "object/tangible/mission/quest_item/kais_q3_needed.iff", itemName = "Powdered Poison" }
		},
		rewards =
		{
			{ rewardType = "faction", faction = "nightsister", amount = 325 },
			{ rewardType = "credits", amount = 30000 },
			{ rewardType = "loot",  lootGroup = "ns_outcast_painting_group" }
		}
	}
}

gethzerion_missions =
{
	{
		missionType = "confiscate",
		primarySpawns =
		{
			{ npcTemplate = "nightsister_slave_quest", npcName = "Dal" }
		},
		secondarySpawns =
		{

		},
		itemSpawns =
		{
			{ itemTemplate = "object/tangible/container/jar/jar_guts_s01.iff", itemName = "" }
		},
		rewards =
		{
			{ rewardType = "faction", faction = "nightsister", amount = 325 },
			{ rewardType = "credits", amount = 30000 },
			{ rewardType = "loot",  lootGroup = "ns_wall_group" }
		}
	},
	{
		missionType = "assassinate",
		primarySpawns =
		{
			{ npcTemplate = "singing_mountain_clan_guardian", npcName = "" },
			{ npcTemplate = "singing_mountain_clan_guardian", npcName = "" },
			{ npcTemplate = "singing_mountain_clan_guardian", npcName = "" }
		},
		secondarySpawns =
		{

		},
		itemSpawns =
		{

		},
		rewards =
		{
			{ rewardType = "faction", faction = "nightsister", amount = 350 },
			{ rewardType = "credits", amount = 32500 },
			{ rewardType = "loot",  lootGroup = "ns_gate_group" }
		}
	},
	{
		missionType = "assassinate",
		primarySpawns =
		{
			{ npcTemplate = "singing_mountain_clan_arch_witch", npcName = "Aelta" }
		},
		secondarySpawns =
		{
			{ npcTemplate = "singing_mountain_clan_guardian", npcName = "" },
			{ npcTemplate = "singing_mountain_clan_guardian", npcName = "" },
			{ npcTemplate = "singing_mountain_clan_guardian", npcName = "" },
			{ npcTemplate = "singing_mountain_clan_guardian", npcName = "" }				
		},
		itemSpawns =
		{

		},
		rewards =
		{
			{ rewardType = "faction", faction = "nightsister", amount = 375 },
			{ rewardType = "credits", amount = 40000 },
			{ rewardType = "loot",  lootGroup = "ns_tower_group" }
		}
	},
	{
		missionType = "confiscate",
		primarySpawns =
		{
			{ npcTemplate = "singing_mountain_clan_arch_witch_quest", npcName = "Chastina" }
		},
		secondarySpawns =
		{
			{ npcTemplate = "singing_mountain_clan_dragoon", npcName = "" },
			{ npcTemplate = "singing_mountain_clan_guardian", npcName = "" },
			{ npcTemplate = "singing_mountain_clan_guardian", npcName = "" }
		},
		itemSpawns =
		{
			{ itemTemplate = "object/tangible/loot/misc/slave_collar.iff", itemName = "" }
		},
		rewards =
		{
			{ rewardType = "faction", faction = "nightsister", amount = 500 },
			{ rewardType = "credits", amount = 60000 },
			{ rewardType = "loot",  lootGroup = "ns_banner_group" }
		}
	}
}

npcMapNightsister =
{
	{
		spawnData = { npcTemplate = "baritha", x = -3975, z = 131.5, y = -160, direction = 180, cellID = 0, position = STAND },
		npcNumber = 1,
		stfFile = "@static_npc/dathomir/baritha",
		missions = baritha_missions
	},
	{
		spawnData = { npcTemplate = "fath_hray", x = -12, z = 7.2, y = -36.7, direction = 13, cellID = 189384, position = STAND },
		worldPosition = { x = -4118.7, y = -157.0 },
		npcNumber = 2,
		stfFile = "@static_npc/dathomir/dathomir_nightsisterstronghold_fath_hray",
		missions = fath_hray_missions
	},
	{
		spawnData = { npcTemplate = "diax", x = -20.5, z = 7.2, y = -27.4, direction = 140, cellID = 189384, position = STAND },
		worldPosition = { x = -4119.4, y = -144.5 },
		npcNumber = 4,
		stfFile = "@static_npc/dathomir/diax",
		missions = diax_missions
	},
	{
		spawnData = { npcTemplate = "kais", x = 14.2, z = 7.2, y = -15, direction = -92, cellID = 189382, position = STAND },
		worldPosition = { x = -4084.7, y = -156.6 },
		npcNumber = 8,
		stfFile = "@static_npc/dathomir/kais",
		missions = kais_missions
	},
	{
		spawnData = { npcTemplate = "gethzerion", x = -2, z = 7.2, y = -1, direction = -135, cellID = 189383, position = STAND },
		worldPosition = { x = -4088.3, y = -135.5 },
		npcNumber = 16,
		stfFile = "@static_npc/dathomir/gethzerion",
		missions = gethzerion_missions
	}
}

ThemeParkNightsister = ThemeParkLogic:new {
npcMap = npcMapNightsister,
className = "ThemeParkNightsister",
screenPlayState = "nightsister_theme_park",
requiredFaction = "nightsister",
planetName = "dathomir"
}

registerScreenPlay("ThemeParkNightsister", true)

theme_park_nightsister_mission_giver_conv_handler = mission_giver_conv_handler:new {
themePark = ThemeParkNightsister
}
theme_park_nightsister_mission_target_conv_handler = mission_target_conv_handler:new {
themePark = ThemeParkNightsister
}








