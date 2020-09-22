karling = Creature:new {
	customName = "a karling",
	socialGroup = "sherkar",
	faction = "",
	level = 80,
	chanceHit = 95.5,
	damageMin = 1150,
	damageMax = 1450,
	baseXp = 10549,
	baseHAM = 25000,
	baseHAMmax = 45000,
	armor = 3,
	resists = {160,165,165,200,155,155,200,160,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 30,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/som/sher_kar.iff"},
	hues = { 0, 1, 2, 3, 4, 5, 6, 7 },
	scale = 0.2,
	lootGroups = {
		{
	        groups = {
			{group = "g_karian_blood_common", chance = 10000000}
			},
			lootChance = 6000000
		},	
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareacombo","stateAccuracyBonus=100"},
		{"creatureareaknockdown","stateAccuracyBonus=100"},
		{"strongpoison","stateAccuracyBonus=50"}
	}
}

CreatureTemplates:addCreatureTemplate(karling, "karling")

