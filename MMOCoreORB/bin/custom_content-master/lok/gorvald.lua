gorvald = Creature:new {
	customName = "Gorvald (Crimson Marauder's commander)",
	socialGroup = "crimson",
	faction = "",
	level = 200,
	chanceHit = 30.5,
	damageMin = 1525,
	damageMax = 2350,
	baseXp = 22411,
	baseHAM = 200000,
	baseHAMmax = 225000,
	armor = 3,
	resists = {175,180,165,200,170,170,165,160,-1},
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
	scale = 1.10,

	templates = {
		"object/mobile/chirq_high_m_1.iff"
	},

	lootGroups = {
		{
			groups = {
				{group = "green_light_gem", chance = 6400000},
				{group = "g_gorvald_ring", chance = 1500000},
				{group = "armor_attachments", chance = 1000000},
				{group = "clothing_attachments", chance = 1000000},
				{group = "g_ig_key", chance = 100000}
			},
			lootchance = 10000000
		}
	},
	weapons = {"rebel_weapons_light"},
	conversationTemplate = "",
	attacks = merge(brawlermaster,tkamaster,marksmanmaster,pistoleermaster)
}

CreatureTemplates:addCreatureTemplate(gorvald, "gorvald")