battlemech_omega = Creature:new {
	customName = "Battlemech Omega",
	socialGroup = "cybernetic",
	faction = "",
	level = 155,
	chanceHit = 9.5,
	damageMin = 700,
	damageMax = 1180,
	baseXp = 14694,
	baseHAM = 50500,
	baseHAMmax = 57500,
	armor = 2,
	resists = {160,165,150,145,160,155,155,140,-1},
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
		"object/mobile/endor_ig88_security_battlemech_alpha.iff"
		},
	lootGroups = {
		{
			groups = {
				{group = "green_light_gem", chance = 5000000},
				{group = "armor_attachments", chance = 1900000},
				{group = "clothing_attachments", chance = 2000000},
				{group = "g_bm_omega_ring", chance = 1000000},
				{group = "g_cybernetics", chance = 100000},
			},
			lootchance = 10000000
		}
	},
	weapons = {"sif_weapons"},
	conversationTemplate = "",
	attacks = merge(brawlermaster,fencermaster,swordsmanmaster)
}

CreatureTemplates:addCreatureTemplate(battlemech_omega, "battlemech_omega")