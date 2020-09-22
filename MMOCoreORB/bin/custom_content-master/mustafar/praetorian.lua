praetorian = Creature:new {
	customName = "a praetorian",
	socialGroup = "sherkar",
	faction = "",
	level = 150,
	chanceHit = 95.5,
	damageMin = 1850,
	damageMax = 2750,
	baseXp = 14549,
	baseHAM = 120000,
	baseHAMmax = 145000,
	armor = 3,
	resists = {180,185,185,200,175,175,200,180,-1},
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
	scale = 0.6,
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
		{"creatureareapoison","stateAccuracyBonus=75"}
	}
}

CreatureTemplates:addCreatureTemplate(praetorian, "praetorian")
