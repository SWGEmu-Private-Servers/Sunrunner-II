lelli_hi = Creature:new {
	customName = "Lelli Hi",
	socialGroup = "nightsister",
	faction = "nightsister",
	level = 250,
	chanceHit = 30.5,
	damageMin = 1550,
	damageMax = 2150,
	baseXp = 25411,
	baseHAM = 270000,
	baseHAMmax = 315000,
	armor = 2,
	resists = {170,170,165,160,170,180,165,165,-1},
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
	creatureBitmask = PACK + KILLER + HEALER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_dathomir_nightsister_guardian.iff"},
	scale = 1.1,	
	lootGroups = {
		{
			groups = {
				{group = "g_som_2h_sword_obsidian", chance = 2000000},
				{group = "pistols", chance = 1000000},
				{group = "rifles", chance = 1000000},
				{group = "g_som_lance_obsidian", chance = 1000000},
				{group = "axkva_min", chance = 2600000},
				{group = "g_nightsister_bicep", chance = 950000},
				{group = "clothing_attachments", chance = 950000},
				{group = "g_som_sword_obsidian", chance = 500000}
			}
		},
	},
	weapons = {"gamorrean_weapons"},
	conversationTemplate = "",
	attacks = merge(brawlermaster,swordsmanmaster,forcepowermaster)
}

CreatureTemplates:addCreatureTemplate(lelli_hi, "lelli_hi")
