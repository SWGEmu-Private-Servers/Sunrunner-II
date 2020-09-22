symbiot = Creature:new {
	customName = "a symbiot",
	socialGroup = "sherkar",
	faction = "",
	level = 120,
	chanceHit = 95.5,
	damageMin = 1350,
	damageMax = 2250,
	baseXp = 12549,
	baseHAM = 70000,
	baseHAMmax = 90000,
	armor = 3,
	resists = {170,175,175,200,165,165,200,170,-1},
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
	scale = 0.4,
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
		{"creatureareapoison","stateAccuracyBonus=25"}
	}
}

CreatureTemplates:addCreatureTemplate(symbiot, "symbiot")

