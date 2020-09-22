singing_mountain_clan_huntress_quest = Creature:new {
	objectName = "@mob/creature_names:singing_mtn_clan_huntress",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "mtn_clan",
	faction = "mtn_clan",
	level = 105,
	chanceHit = 20.5,
	damageMin = 975,
	damageMax = 1350,
	baseXp = 11207,
	baseHAM = 27500,
	baseHAMmax = 32750,
	armor = 1,
	resists = {55,160,175,160,175,45,35,40,-1},
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

	templates = {"object/mobile/dressed_dathomir_sing_mt_clan_huntress.iff"},
	lootGroups = {
		{
			groups = {
				{group = "theme_park_loot_healing_salve_ns_diax", chance = 10000000}
			},
		lootChance = 10000000
		}
	},
	weapons = {"mixed_force_weapons"},
	conversationTemplate = "",
	attacks = merge(pikemanmaster,brawlermaster,fencermaster,swordsmanmaster,forcewielder)
}

CreatureTemplates:addCreatureTemplate(singing_mountain_clan_huntress_quest, "singing_mountain_clan_huntress_quest")