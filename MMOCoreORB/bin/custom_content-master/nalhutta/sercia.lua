sercia = Creature:new {
	customName = "Sercia (Bog Raider's chemist)",
	socialGroup = "bograider",
	faction = "",
	level = 185,
	chanceHit = 20.5,
	damageMin = 1800,
	damageMax = 2250,
	baseXp = 18611,
	baseHAM = 175000,
	baseHAMmax = 210000,
	armor = 2,
	resists = {170,190,165,170,170,185,190,165,-1},
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
		"object/mobile/dressed_bh_female_zab_01.iff"
	},

	lootGroups = {
		{
			groups = {
				{group = "green_light_gem", chance = 6000000},
				{group = "g_sercia_necklace", chance = 1500000},
				{group = "armor_attachments", chance = 1500000},
				{group = "clothing_attachments", chance = 1000000}
			},
			lootchance = 10000000
		}
	},
	weapons = {"rebel_weapons_medium"},
	conversationTemplate = "",
	attacks = merge(brawlermaster,tkamaster,pistoleermaster,marksmanmaster,carbineermaster,riflemanmaster)
}

CreatureTemplates:addCreatureTemplate(sercia, "sercia")