sayormi_witch = Creature:new {
	customName = "a Sayormi Witch",
	socialGroup = "sayormi",
	faction = "sayormi",
	level = 73,
	chanceHit = 1,
	damageMin = 520,
	damageMax = 680,
	baseXp = 7023,
	baseHAM = 15500,
	baseHAMmax = 19000,
	armor = 1,
	resists = {150,160,140,25,145,165,170,145,-1},
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

	templates = {
		"object/mobile/dressed_sayormi_witch_01.iff",
		"object/mobile/dressed_sayormi_witch_02.iff",
		"object/mobile/dressed_sayormi_witch_03.iff",
		"object/mobile/dressed_sayormi_witch_04.iff",
		"object/mobile/dressed_sayormi_witch_05.iff",
		"object/mobile/dressed_sayormi_witch_06.iff",
		"object/mobile/dressed_sayormi_witch_07.iff"
		},
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 3000000},
				{group = "g_sayormi_books", chance = 2000000},
				{group = "g_sayormi_junk", chance = 3000000},
				{group = "armor_attachments", chance = 500000},
				{group = "clothing_attachments", chance = 500000},
				{group = "color_crystals", chance = 1000000}
			}
		}
	},
	weapons = {"mixed_force_weapons"},
	conversationTemplate = "",
	attacks = merge(pikemanmaster,brawlermaster,fencermaster,swordsmanmaster)
}

CreatureTemplates:addCreatureTemplate(sayormi_witch, "sayormi_witch")
