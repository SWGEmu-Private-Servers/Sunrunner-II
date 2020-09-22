nexu = Creature:new {
	objectName = "@mob/creature_names:nexu",
	socialGroup = "nexu",
	faction = "",
	level = 68,
	chanceHit = 1.5,
	damageMin = 425,
	damageMax = 680,
	baseXp = 6563,
	baseHAM = 13300,
	baseHAMmax = 17300,
	armor = 1,
	resists = {160,160,155,155,165,160,175,155,-1},
	meatType = "meat_carnivore",
	meatAmount = 70,
	hideType = "hide_bristley",
	hideAmount = 40,
	boneType = "bone_mammal",
	boneAmount = 35,
	milk = 0,
	tamingChance = 0.02,
	ferocity = 10,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/beast_master/bm_nexu.iff"},
	--hues = { 0, 1, 2, 3, 4, 5, 6, 7 },
	controlDeviceTemplate = "object/intangible/beast/bm_nexu.iff",
	scale = 1.35,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"strongpoison","stateAccuracyBonus=50"},
		{"creatureareacombo","stateAccuracyBonus=25"}
	}
}

CreatureTemplates:addCreatureTemplate(nexu, "nexu")
