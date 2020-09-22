revlan = Creature:new {
	customName = "Revlan (Silent Shade overlord)",
	socialGroup = "shade",
	faction = "",
	level = 250,
	chanceHit = 30.5,
	damageMin = 1350,
	damageMax = 1950,
	baseXp = 26411,
	baseHAM = 285000,
	baseHAMmax = 350000,
	armor = 3,
	resists = {175,175,165,170,165,170,160,200,-1},
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
	scale = 1.2,

	templates = {
		"object/mobile/dressed_officer_merc5.iff"
		},
	lootGroups = {
		{
			groups = {
				{group = "green_light_gem", chance = 4500000},
				{group = "g_revlan_necklace", chance = 1500000},
				{group = "armor_attachments", chance = 1500000},
				{group = "clothing_attachments", chance = 1500000},
				{group = "g_heavy_cr1_blast_cannon", chance = 1000000}
			},
			lootchance = 10000000
		}
	},
	weapons = {"mordran_weapons"},
	conversationTemplate = "",
	attacks = merge(brawlermaster,swordsmanmaster)
}

CreatureTemplates:addCreatureTemplate(revlan, "revlan")