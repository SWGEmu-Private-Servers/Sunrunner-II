neska = Creature:new {
	customName = "Officer Neska",
	socialGroup = "rebel",
	faction = "rebel",
	level = 220,
	chanceHit = 25,
	damageMin = 1475,
	damageMax = 2025,
	baseXp = 26411,
	baseHAM = 175000,
	baseHAMmax = 225000,
	armor = 2,
	resists = {165,165,170,185,185,165,150,170,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE + OVERT,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dressed_rebel_restuss_captain_vrinko.iff"
	},

	lootGroups = {
		{
			groups = {
				{group = "green_light_gem", chance = 5000000},
				{group = "armor_attachments", chance = 1750000},
				{group = "clothing_attachments", chance = 1750000},
				{group = "g_officer_bracelet_r", chance = 1500000}
			},
			lootchance = 10000000
		}
	},
	weapons = {"cas_vankoo_weapons"},
	conversationTemplate = "",
	attacks = merge(brawlermaster,tkamaster,marksmanmaster,pistoleermaster,pikemanmaster)
}

CreatureTemplates:addCreatureTemplate(neska, "neska")