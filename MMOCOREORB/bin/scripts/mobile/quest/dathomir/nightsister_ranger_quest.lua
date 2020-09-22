nightsister_ranger_quest = Creature:new {
	objectName = "@mob/creature_names:nightsister_ranger",
	socialGroup = "nightsister",
	faction = "nightsister",
	level = 120,
	chanceHit = 25.5,
	damageMin = 1355,
	damageMax = 1820,
	baseXp = 17761,
	baseHAM = 34500,
	baseHAMmax = 39700,
	armor = 1,
	resists = {145,160,40,170,200,200,200,200,-1},
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

	templates = {"object/mobile/dressed_dathomir_nightsister_ranger.iff"},
	lootGroups = {
		{
			groups = {
					{group = "theme_park_loot_healing_salve_smc_vurlene", chance = 10000000}
				},
			lootChance = 10000000
		}
	},
	weapons = {"mixed_force_weapons"},
	conversationTemplate = "",
	attacks = merge(pikemanmaster,brawlermaster,fencermaster,swordsmanmaster,forcewielder)
}

CreatureTemplates:addCreatureTemplate(nightsister_ranger_quest, "nightsister_ranger_quest")