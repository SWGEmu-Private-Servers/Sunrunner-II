tregin = Creature:new {
	customName = "Tregin (Ryson's subordinate)",
	socialGroup = "bograider",
	faction = "",
	level = 250,
	chanceHit = 30.5,
	damageMin = 1400,
	damageMax = 1920,
	baseXp = 24411,
	baseHAM = 235000,
	baseHAMmax = 275000,
	armor = 2,
	resists = {185,180,170,200,175,190,200,170,-1},
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
		"object/mobile/coa_lag_elite_hum_m2.iff"
	},

	lootGroups = {
		{
			groups = {
				{group = "green_light_gem", chance = 6000000},
				{group = "g_tregin_ring", chance = 1500000},
				{group = "armor_attachments", chance = 1500000},
				{group = "clothing_attachments", chance = 1000000}
			},
			lootchance = 10000000
		}
	},
	weapons = {"gamorrean_weapons"},
	conversationTemplate = "",
	attacks = merge(brawlermaster,swordsmanmaster)
}

CreatureTemplates:addCreatureTemplate(tregin, "tregin")
