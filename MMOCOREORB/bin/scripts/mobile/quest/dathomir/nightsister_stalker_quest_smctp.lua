nightsister_stalker_quest_smctp = Creature:new {
	objectName = "@mob/creature_names:nightsister_stalker",
	socialGroup = "nightsister",
	faction = "nightsister",
	level = 180,
	chanceHit = 30,
	damageMin = 1450,
	damageMax = 1920,
	baseXp = 21500,
	baseHAM = 108700,
	baseHAMmax = 115900,
	armor = 2,
	resists = {170,170,200,200,160,200,170,155,-1},
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
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_dathomir_nightsister_stalker.iff"},
	lootGroups = {
		{
			groups = {
					{group = "theme_park_loot_sacred_tome_smc_aujante", chance = 10000000}
				},
			lootChance = 10000000
		}
	},
	weapons = {"mixed_force_weapons"},
	conversationTemplate = "",
	attacks = merge(pikemanmaster,brawlermaster,fencermaster,swordsmanmaster,forcepowermaster)
}

CreatureTemplates:addCreatureTemplate(nightsister_stalker_quest_smctp, "nightsister_stalker_quest_smctp")