kentarin = Creature:new {
	customName = "Kentarin (a Bog Raider brute)",
	socialGroup = "bograider",
	faction = "",
	level = 150,
	chanceHit = 20.5,
	damageMin = 1160,
	damageMax = 1750,
	baseXp = 12825,
	baseHAM = 56500,
	baseHAMmax = 68750,
	armor = 2,
	resists = {160,160,165,190,175,165,180,155,-1},
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

	templates = {"object/mobile/npe/dressed_rakqua_hired_assassin.iff"},
	scale = 1.2,

	lootGroups = {
		{
			groups = {
				{group = "green_light_gem", chance = 5250000},
				{group = "armor_attachments", chance = 1500000},
				{group = "clothing_attachments", chance = 2000000},
				{group = "g_carbine_charric", chance = 1250000}
			},
			lootchance = 10000000
		}
	},
	weapons = {"hardened_commander_weapons"},
	conversationTemplate = "",
	attacks = merge(pikemanmaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(kentarin, "kentarin")