suin_chalo = Creature:new {
	customName = "Suin Chalo",
	socialGroup = "nightsister",
	faction = "nightsister",
	level = 300,
	chanceHit = 30.5,
	damageMin = 1250,
	damageMax = 1850,
	baseXp = 27411,
	baseHAM = 330000,
	baseHAMmax = 355000,
	armor = 3,
	resists = {175,175,170,190,190,190,200,170,-1},
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
	creatureBitmask = PACK + KILLER + HEALER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_dathomir_nightsister_protector.iff"},
	scale = 1.1,	
	lootGroups = {
		{
			groups = {
				{group = "g_som_2h_sword_obsidian", chance = 2000000},
				{group = "pistols", chance = 1000000},
				{group = "rifles", chance = 1000000},
				{group = "g_som_lance_obsidian", chance = 1000000},
				{group = "axkva_min", chance = 2600000},
				{group = "g_nightsister_bicep", chance = 950000},
				{group = "clothing_attachments", chance = 950000},
				{group = "g_som_sword_obsidian", chance = 500000}
			}
		},
	},
	weapons = {"melee_weapons"},
	conversationTemplate = "",
	attacks = {
		{"creatureareapoison","stateAccuracyBonus=25"},
		{"creatureareacombo","stateAccuracyBonus=100"},
		{"creatureareaattack","stateAccuracyBonus=100"},
	}
}

CreatureTemplates:addCreatureTemplate(suin_chalo, "suin_chalo")
