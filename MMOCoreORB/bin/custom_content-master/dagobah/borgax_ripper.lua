borgax_ripper = Creature:new {
	objectName = "@mob/creature_names:borgax_ripper",
	socialGroup = "borgax",
	faction = "",
	level = 60,
	chanceHit = 1.5,
	damageMin = 570,
	damageMax = 745,
	baseXp = 5830,
	baseHAM = 13800,
	baseHAMmax = 17300,
	armor = 1,
	resists = {160,165,155,150,155,165,200,150,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.02,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/beast_master/bm_mutated_borgax.iff"},
	hues = { 11, 12, 14, 15, 16, 17, 18, 19 },
	controlDeviceTemplate = "object/intangible/pet/beast_master/bm_mutated_borgax.iff",
	scale = 1.65,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareableeding","stateAccuracyBonus=50"},
		{"blindattack","stateAccuracyBonus=100"}
	}
}

CreatureTemplates:addCreatureTemplate(borgax_ripper, "borgax_ripper")
