strider_observer = Creature:new {
	objectName = "@mob/creature_names:strider_observer",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "strider",
	faction = "strider",
	level = 110,
	chanceHit = 5,
	damageMin = 1180,
	damageMax = 1475,
	baseXp = 8807,
	baseHAM = 46850,
	baseHAMmax = 54950,
	armor = 2,
	resists = {165,160,155,175,145,200,180,155,-1},
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
		"object/mobile/ep3/ep3_clone_relics_claw_bodyguard_01.iff",
		"object/mobile/ep3/ep3_etyyy_chiss_poacher_hunter_04.iff"
	},
	scale = 1.1,
	lootGroups = {
		{
			groups = {
				{group = "loot_kit_parts", chance = 2400000},
				{group = "junk", chance = 1500000},
				{group = "desert_demon_common", chance = 2000000},
				{group = "borvos_common", chance = 1250000},
				{group = "canyon_corsair_common", chance = 2250000},
				{group = "g_quickshot_ring", chance = 500000},
				{group = "g_quickshot_necklace", chance = 100000},
			}
		}
	},
	weapons = {"strider_observer_weapons"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/slang",
	attacks = merge(tkamaster,pikemanmaster,pistoleermaster,brawlermaster,swordsmanmaster,riflemanmaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(strider_observer, "strider_observer")
