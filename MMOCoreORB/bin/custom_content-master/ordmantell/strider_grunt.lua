strider_grunt = Creature:new {
	objectName = "@mob/creature_names:strider_grunt",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "strider",
	faction = "strider",
	level = 70,
	chanceHit = 1.5,
	damageMin = 710,
	damageMax = 890,
	baseXp = 6307,
	baseHAM = 17750,
	baseHAMmax = 21750,
	armor = 1,
	resists = {155,155,145,165,40,180,160,145,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
		"object/mobile/ep3/ep3_etyyy_chiss_poacher_defender_04.iff",
		"object/mobile/ep3/ep3_etyyy_chiss_poacher_03.iff",
		"object/mobile/ep3/ep3_etyyy_hunter_eharttclan_03.iff",
		"object/mobile/ep3/ep3_clone_relics_claw_grunt_04.iff",
		"object/mobile/ep3/ep3_gotal_hunter.iff",
		"object/mobile/ep3/ep3_rryatt_deep_woods_poacher_03.iff",
		"object/mobile/ep3/ep3_rryatt_deep_woods_poacher_04.iff"
	},

	lootGroups = {
		{
			groups = {
				{group = "loot_kit_parts", chance = 2400000},
				{group = "junk", chance = 1500000},
				{group = "desert_demon_common", chance = 2000000},
				{group = "borvos_common", chance = 1250000},
				{group = "canyon_corsair_common", chance = 2250000},
				{group = "g_quickshot_ring", chance = 100000},
				{group = "g_quickshot_necklace", chance = 500000},
			}
		}
	},
	weapons = {"strider_grunt_weapons"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/slang",
	attacks = merge(pikemanmaster,brawlermaster,fencermaster,carbineermaster,marksmanmaster,tkamaster,pistoleermaster)
}

CreatureTemplates:addCreatureTemplate(strider_grunt, "strider_grunt")
