strider_brute = Creature:new {
	objectName = "@mob/creature_names:strider_brute",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "strider",
	faction = "strider",
	level = 83,
	chanceHit = 2,
	damageMin = 860,
	damageMax = 1050,
	baseXp = 7007,
	baseHAM = 20750,
	baseHAMmax = 25250,
	armor = 1,
	resists = {160,155,150,165,40,185,160,150,-1},
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
		"object/mobile/ep3/ep3_canopy_bandit_04.iff",
		"object/mobile/ep3/ep3_canopy_bandit_02.iff",
		"object/mobile/ep3/ep3_blackscale_dead_03.iff"
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
	weapons = {"strider_brute_weapons"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/slang",
	attacks = merge(tkamaster,pikemanmaster,bountyhuntermid,brawlermaster,swordsmanmaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(strider_brute, "strider_brute")
