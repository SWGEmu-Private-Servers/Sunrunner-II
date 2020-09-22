spiax = Creature:new {
	objectName = "@mob/creature_names:spiax",
	socialGroup = "spiax",
	faction = "",
	level = 45,
	chanceHit = 1,
	damageMin = 375,
	damageMax = 460,
	baseXp = 4370,
	baseHAM = 10200,
	baseHAMmax = 12500,
	armor = 1,
	resists = {145,145,155,40,40,145,170,35,-1},
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

	templates = {"object/mobile/beast_master/bm_mutated_jax.iff"},
	hues = { 9, 10, 11, 12, 13, 14, 17 },
	controlDeviceTemplate = "object/intangible/beast/bm_mutated_jax.iff",
	scale = 3.5,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"intimidationattack","stateAccuracyBonus=25"},
		{"blindattack","stateAccuracyBonus=25"}
	}
}

CreatureTemplates:addCreatureTemplate(spiax, "spiax")
