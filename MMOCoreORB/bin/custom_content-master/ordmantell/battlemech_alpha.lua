battlemech_alpha = Creature:new {
	customName = "Battlemech Alpha",
	socialGroup = "cybernetic",
	faction = "",
	level = 155,
	chanceHit = 9.5,
	damageMin = 800,
	damageMax = 1260,
	baseXp = 14694,
	baseHAM = 98500,
	baseHAMmax = 125000,
	armor = 2,
	resists = {175,175,160,160,170,165,165,150,-1},
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
		"object/mobile/endor_ig88_security_battlemech_omega.iff"
		},
	lootGroups = {
		{
			groups = {
				{group = "green_light_gem", chance = 5000000},
				{group = "armor_attachments", chance = 1900000},
				{group = "clothing_attachments", chance = 2000000},
				{group = "g_bm_alpha_ring", chance = 1000000},
				{group = "g_cybernetics", chance = 100000},
			},
			lootchance = 10000000
		}
	},
	weapons = {"st_sniper_weapons"},
	conversationTemplate = "",
	attacks = merge(riflemanmaster,brawlermaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(battlemech_alpha, "battlemech_alpha")