spiax_swamp_gazer = Creature:new {
	objectName = "@mob/creature_names:spiax_swamp_gazer",
	socialGroup = "spiax",
	faction = "",
	level = 50,
	chanceHit = 1,
	damageMin = 445,
	damageMax = 530,
	baseXp = 4970,
	baseHAM = 12000,
	baseHAMmax = 13750,
	armor = 1,
	resists = {150,150,170,150,145,160,180,145,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.03,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/beast_master/bm_mutated_jax.iff"},
	hues = { 0, 1, 3, 4, 7, 8 },
	controlDeviceTemplate = "object/intangible/beast/bm_mutated_jax.iff",
	scale = 4,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"intimidationattack","stateAccuracyBonus=75"},
		{"blindattack","stateAccuracyBonus=50"}
	}
}

CreatureTemplates:addCreatureTemplate(spiax_swamp_gazer, "spiax_swamp_gazer")
