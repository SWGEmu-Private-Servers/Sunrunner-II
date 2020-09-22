massiff = Creature:new {
	objectName = "@mob/creature_names:massiff",
	socialGroup = "massiff",
	faction = "",
	level = 50,
	chanceHit = 1,
	damageMin = 415,
	damageMax = 510,
	baseXp = 5370,
	baseHAM = 10650,
	baseHAMmax = 14650,
	armor = 1,
	resists = {155,150,165,200,145,145,150,145,-1},
	meatType = "meat_carnivore",
	meatAmount = 215,
	hideType = "hide_bristley",
	hideAmount = 95,
	boneType = "bone_mammal",
	boneAmount = 105,
	milk = 0,
	tamingChance = 0.1,
	ferocity = 6,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + STALKER + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/tusken_massif.iff"},
	controlDeviceTemplate = "object/intangible/pet/massiff.iff",
	scale = 1.1,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareableeding","stateAccuracyBonus=25"},
		{"knockdownattack","stateAccuracyBonus=25"}
	}
}

CreatureTemplates:addCreatureTemplate(massiff, "massiff")
