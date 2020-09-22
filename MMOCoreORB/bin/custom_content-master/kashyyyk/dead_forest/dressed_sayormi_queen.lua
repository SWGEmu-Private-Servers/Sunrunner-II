sayormi_queen = Creature:new {
	customName = "a Sayormi Queen",
	socialGroup = "sayormi",
	level = 115,
	chanceHit = 3.5,
	damageMin = 820,
	damageMax = 1350,
	baseXp = 10921,
	baseHAM = 30500,
	baseHAMmax = 43000,
	armor = 2,
	resists = {150,160,150,40,155,170,170,150,-1},
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
	creatureBitmask = PACK + HERD + KILLER + HEALER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_sayormi_queen.iff"},
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 3000000},
				{group = "g_sayormi_books", chance = 2000000},
				{group = "g_sayormi_junk", chance = 3000000},
				{group = "armor_attachments", chance = 500000},
				{group = "clothing_attachments", chance = 500000},
				{group = "color_crystals", chance = 900000},
				{group = "g_sayormi_mobile", chance = 100000},
			}
		}
	},
	weapons = {"mixed_force_weapons"},
	conversationTemplate = "",
	attacks = merge(pikemanmaster,brawlermaster,fencermaster,swordsmanmaster,forcewielder)
}

CreatureTemplates:addCreatureTemplate(sayormi_queen, "sayormi_queen")
