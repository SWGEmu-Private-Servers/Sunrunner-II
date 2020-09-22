varactyl = Creature:new {
	objectName = "@mob/creature_names:varactyl",
	socialGroup = "varactyl",
	level = 35,
	chanceHit = 1,
	damageMin = 300,
	damageMax = 340,
	baseXp = 3500,
	baseHAM = 9000,
	baseHAMmax = 11000,
	armor = 0,
	resists = {140,125,15,-1,20,155,135,-1,-1},
	meatType = "meat_avian",
	meatAmount = 45,
	hideType = "hide_scaley",
	hideAmount = 40,
	boneType = "bone_avian",
	boneAmount = 35,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = HERD,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/varactyl.iff"},
	hues = { 0, 1, 2, 3, 4, 5, 6, 7 },
	controlDeviceTemplate = "object/intangible/pet/varactyl.iff",
	scale = 1,
	lootGroups = {},
	weapons = {},
	attacks = {
		{"stunattack",""},
		{"posturedownattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(varactyl, "varactyl")
