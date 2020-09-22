nexu_shredder = Creature:new {
	objectName = "@mob/creature_names:nexu_shredder",
	socialGroup = "nexu",
	faction = "",
	level = 79,
	chanceHit = 2.5,
	damageMin = 515,
	damageMax = 720,
	baseXp = 7123,
	baseHAM = 15000,
	baseHAMmax = 19000,
	armor = 1,
	resists = {165,160,155,160,170,165,180,155,-1},
	meatType = "meat_carnivore",
	meatAmount = 80,
	hideType = "hide_bristley",
	hideAmount = 45,
	boneType = "bone_mammal",
	boneAmount = 45,
	milk = 0,
	tamingChance = 0,
	ferocity = 10,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/beast_master/bm_nexu.iff"},
	scale = 1.5,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"strongpoison","stateAccuracyBonus=60"},
		{"creatureareacombo","stateAccuracyBonus=35"}
	}
}

CreatureTemplates:addCreatureTemplate(nexu_shredder, "nexu_shredder")
