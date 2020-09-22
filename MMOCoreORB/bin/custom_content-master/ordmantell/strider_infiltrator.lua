strider_infiltrator = Creature:new {
	objectName = "@mob/creature_names:strider_infiltrator",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "strider",
	faction = "strider",
	level = 90,
	chanceHit = 2,
	damageMin = 920,
	damageMax = 1125,
	baseXp = 7807,
	baseHAM = 25850,
	baseHAMmax = 29850,
	armor = 1,
	resists = {155,160,150,170,40,180,170,150,-1},
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
		"object/mobile/som/som_dark_jedi_minion_2.iff",
		"object/mobile/som/som_dark_jedi_minion_4.iff",
		"object/mobile/som/som_dark_jedi_minion_5.iff",
		"object/mobile/som/som_dark_jedi_minion_6.iff"
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
	weapons = {"strider_infiltrator_weapons"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/slang",
	attacks = merge(tkamaster,pikemanmaster,fencermaster,brawlermaster,pistoleermaster,riflemanmaster)
}

CreatureTemplates:addCreatureTemplate(strider_infiltrator, "strider_infiltrator")
