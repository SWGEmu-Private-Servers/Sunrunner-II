
battlemech_beta = Creature:new {
	customName = "Battlemech Beta",
	socialGroup = "cybernetic",
	faction = "",
	level = 155,
	chanceHit = 9.5,
	damageMin = 750,
	damageMax = 1200,
	baseXp = 14694,
	baseHAM = 54500,
	baseHAMmax = 60500,
	armor = 2,
	resists = {165,165,155,150,165,160,160,145,-1},
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
	scale = 1.25,

	templates = {
		"object/mobile/endor_ig88_security_battlemech_beta.iff"
		},
	lootGroups = {
		{
			groups = {
				{group = "green_light_gem", chance = 5000000},
				{group = "armor_attachments", chance = 2000000},
				{group = "clothing_attachments", chance = 1900000},
				{group = "g_bm_beta_ring", chance = 1000000},
				{group = "g_cybernetics", chance = 100000},
			},
			lootchance = 10000000
		}
	},
	weapons = {"blood_razer_weapons"},
	conversationTemplate = "",
	attacks = merge(pistoleermaster,brawlermaster,marksmanmaster,pikemanmaster)
}

CreatureTemplates:addCreatureTemplate(battlemech_beta, "battlemech_beta")