tusken_massiff = Creature:new {
	customName = "a Tusken massiff",
	socialGroup = "tusken_raider",
	faction = "tusken_raider",
	level = 50,
	chanceHit = 1,
	damageMin = 425,
	damageMax = 520,
	specialDamageMult = 2.5,
	baseXp = 5570,
	baseHAM = 10850,
	baseHAMmax = 14850,
	armor = 1,
	resists = {155,150,165,200,145,145,150,145,-1},
	meatType = "meat_carnivore",
	meatAmount = 235,
	hideType = "hide_bristley",
	hideAmount = 115,
	boneType = "bone_mammal",
	boneAmount = 115,
	milk = 0,
	tamingChance = 0,
	ferocity = 6,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + STALKER + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/tusken_massif.iff"},
	scale = 1.1,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"stunattack","stateAccuracyBonus=25"},
		{"knockdownattack","stateAccuracyBonus=25"}
	}
}

CreatureTemplates:addCreatureTemplate(tusken_massiff, "tusken_massiff")
