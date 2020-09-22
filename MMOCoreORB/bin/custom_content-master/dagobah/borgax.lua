borgax = Creature:new {
	objectName = "@mob/creature_names:borgax",
	socialGroup = "borgax",
	faction = "",
	level = 60,
	chanceHit = 1,
	damageMin = 520,
	damageMax = 685,
	baseXp = 5830,
	baseHAM = 13000,
	baseHAMmax = 16500,
	armor = 1,
	resists = {160,165,155,145,150,165,190,150,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.06,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/beast_master/bm_mutated_borgax.iff"},
	hues = { 0, 1, 2, 3, 4, 5, 6, 7 },
	controlDeviceTemplate = "object/intangible/pet/beast_master/bm_mutated_borgax.iff",
	scale = 1.5,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"blindattack","stateAccuracyBonus=25"},
		{"strongpoison","stateAccuracyBonus=15"}
	}
}

CreatureTemplates:addCreatureTemplate(borgax, "borgax")

