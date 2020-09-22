sayormi_spellweaver = Creature:new {
	objectName = "@mob/creature_names:sayormi_spellweaver",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "sayormi",
	faction = "sayormi",
	level = 70,
	chanceHit = 1.5,
	damageMin = 650,
	damageMax = 780,
	baseXp = 7023,
	baseHAM = 15500,
	baseHAMmax = 19000,
	armor = 1,
	resists = {150,160,140,150,150,165,170,145,-1},
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
		"object/mobile/dressed_sayormi_witch_04.iff"
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
	attacks = merge(pikemanmaster,brawlermaster,fencermaster,swordsmanmaster,forcewielder)
}

CreatureTemplates:addCreatureTemplate(sayormi_spellweaver, "sayormi_spellweaver")
