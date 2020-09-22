vesk = Creature:new {
	customName = "Vesk (the carax's keeper)",
	socialGroup = "bograider",
	faction = "",
	level = 173,
	chanceHit = 20.5,
	damageMin = 1250,
	damageMax = 1650,
	baseXp = 16411,
	baseHAM = 145000,
	baseHAMmax = 175000,
	armor = 2,
	resists = {180,170,160,165,175,180,180,155,-1},
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
		"object/mobile/dressed_bh_male_twk_02.iff"
	},

	lootGroups = {
		{
			groups = {
				{group = "green_light_gem", chance = 6000000},
				{group = "g_vesk_necklace", chance = 1500000},
				{group = "armor_attachments", chance = 1500000},
				{group = "clothing_attachments", chance = 1000000}
			},
			lootchance = 10000000
		}
	},
	weapons = {"blood_razer_weapons"},
	conversationTemplate = "",
	attacks = merge(pikemanmaster,brawlermaster,pistoleermaster,marksmanmaster,tkamaster)
}

CreatureTemplates:addCreatureTemplate(vesk, "vesk")