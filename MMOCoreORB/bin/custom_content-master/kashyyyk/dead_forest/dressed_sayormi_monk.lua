sayormi_monk = Creature:new {
	customName = "a Sayormi Monk",
	socialGroup = "sayormi",
	faction = "sayormi",
	level = 68,
	chanceHit = 1,
	damageMin = 480,
	damageMax = 680,
	baseXp = 6563,
	baseHAM = 13500,
	baseHAMmax = 17000,
	armor = 1,
	resists = {140,160,30,15,140,160,165,145,-1},
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
		"object/mobile/dressed_sayromi_monk_01.iff",
		"object/mobile/dressed_sayromi_monk_02.iff",
		"object/mobile/dressed_sayromi_monk_03.iff",
		"object/mobile/dressed_sayromi_monk_04.iff",
		"object/mobile/dressed_sayromi_monk_05.iff",
		"object/mobile/dressed_sayromi_monk_06.iff"
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
	weapons = {"unarmed_weapons"},
	conversationTemplate = "",
	attacks = merge(tkamaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(sayormi_monk, "sayormi_monk")
