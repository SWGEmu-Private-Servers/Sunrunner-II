giant_crystal_snake = Creature:new {
	objectName = "@mob/creature_names:giant_crystal_snake",
	socialGroup = "snake",
	faction = "",
	level = 40,
	chanceHit = 1.5,
	damageMin = 335,
	damageMax = 425,
	baseXp = 3915,
	baseHAM = 9000,
	baseHAMmax = 11500,
	armor = 1,
	resists = {150,155,145,140,140,145,160,140,-1},
	meatType = "meat_carnivore",
	meatAmount = 7,
	hideType = "hide_scaley",
	hideAmount = 4,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.1,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/giant_crystal_snake.iff"},
	controlDeviceTemplate = "object/intangible/pet/crystal_snake.iff",
	scale = 1.4,
	lootGroups = {},
	weapons = {"creature_spit_small_toxicgreen"},
	conversationTemplate = "",
	attacks = {
		{"blindattack","stateAccuracyBonus=25"},
		{"strongpoison",""}
	}
}

CreatureTemplates:addCreatureTemplate(giant_crystal_snake, "giant_crystal_snake")
