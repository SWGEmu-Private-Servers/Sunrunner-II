deranged_ravisher = Creature:new {
	objectName = "@mob/creature_names:squill_deranged_ravisher",
	socialGroup = "squill",
	faction = "",
	level = 35,
	chanceHit = 1.25,
	damageMin = 380,
	damageMax = 450,
	baseXp = 7060,
	baseHAM = 9600,
	baseHAMmax = 11500,
	armor = 1,
	resists = {150,155,145,145,145,175,195,165,-1},
	meatType = "meat_carnivore",
	meatAmount = 130,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.05,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + HERD,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/squill_hue.iff"},
	controlDeviceTemplate = "object/intangible/pet/squill_hue.iff",
	scale = 1.35,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"knockdownattack","stateAccuracyBonus=100"},
		{"strongdisease","stateAccuracyBonus=100"}
	}
}

CreatureTemplates:addCreatureTemplate(deranged_ravisher, "deranged_ravisher")