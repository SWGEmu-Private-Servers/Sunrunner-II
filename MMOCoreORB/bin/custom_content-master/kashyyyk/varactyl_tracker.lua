varactyl_tracker = Creature:new {
	objectName = "@mob/creature_names:varactyl_tracker",
	socialGroup = "varactyl",
	level = 50,
	chanceHit = 1,
	damageMin = 480,
	damageMax = 550,
	baseXp = 7500,
	baseHAM = 11500,
	baseHAMmax = 13500,
	armor = 1,
	resists = {150,145,150,40,155,165,165,145,-1},
	meatType = "meat_avian",
	meatAmount = 200,
	hideType = "hide_scaley",
	hideAmount = 150,
	boneType = "bone_avian",
	boneAmount = 150,
	milk = 0,
	tamingChance = 0.07,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = HERD,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/varactyl.iff"},
	hues = { 26, 27, 28, 29, 30, 31, 39, 40 },
	controlDeviceTemplate = "object/intangible/pet/varactyl.iff",
	scale = 1.5,
	lootGroups = {},
	weapons = {},
	attacks = {
		{"intimidationattack","stateAccuracyBonus=25"},
		{"knockdownattack","stateAccuracyBonus=25"}
	}
}

CreatureTemplates:addCreatureTemplate(varactyl_tracker, "varactyl_tracker")