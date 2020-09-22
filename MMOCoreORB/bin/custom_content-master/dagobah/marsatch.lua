marsatch = Creature:new {
	objectName = "@mob/creature_names:marsatch",
	socialGroup = "marsatch",
	faction = "",
	level = 50,
	chanceHit = 1,
	damageMin = 410,
	damageMax = 525,
	baseXp = 4916,
	baseHAM = 10700,
	baseHAMmax = 13200,
	armor = 1,
	resists = {150,150,145,145,140,150,170,40,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.08,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/beast_master/bm_mutated_narglatch.iff"},
	--hues = { 0, 1, 2, 3, 4, 5, 6, 7 },
	controlDeviceTemplate = "object/intangible/pet/beast_master/bm_mutated_narglatch.iff",
	scale = 1.5,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"intimidationattack","stateAccuracyBonus=25"},
		{"knockdownattack","stateAccuracyBonus=25"}
	}
}

CreatureTemplates:addCreatureTemplate(marsatch, "marsatch")
